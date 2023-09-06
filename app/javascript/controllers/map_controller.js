// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  static targets = ["address", "addressWrapper", "mapContainer"]

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.mapContainerTarget,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    if (this.hasMarkersValue) {
      this.#addMarkersToMap()
      this.#fitMapToMarkers()
    }
    this.myLocation()

    if (this.hasAddressTarget) {
      this.setAutocomplete();
    }
  }

  #addMarkersToMap() {
    console.log(this.markersValue);
    this.markersValue.forEach((marker) => {
      const htmlLogic = marker.preview_card_html
      const popup = new mapboxgl.Popup({ className: "popup-window" }).setHTML(htmlLogic)
      const markerHtml = new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
        markerHtml["_element"].addEventListener("click", (e) => {
            console.log(e)
            e.preventDefault()
          })
    })

  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  // Add users current location as the location of a new nook

  myLocation() {
  // Add geolocate control to the map.
  this.map.addControl(new mapboxgl.GeolocateControl({

      positionOptions: {
          enableHighAccuracy: true
      },
      // When active the map will receive updates to the device's location as it changes.
      trackUserLocation: true,
      // Draw an arrow next to the location dot to indicate which direction the device is heading.
      showUserHeading: true
    }))
  }

  addAutocompleteMarker(coordinates) {
    const markerHtml = new mapboxgl.Marker()
      .setLngLat(coordinates)
      .addTo(this.map)
    this.map.flyTo({ center: coordinates, zoom: 14 })
  }

  setAutocomplete() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })
    this.geocoder.addTo(this.addressWrapperTarget)
    this.geocoder.on("result", (event) => {
      const coordinates = event.result.geometry.coordinates;
      this.addAutocompleteMarker(coordinates);
      this.#setInputValue(event)
    })
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }

  disconnect() {
    if (this.hasAddressTarget) {
      this.geocoder.onRemove()
    }
  }
}
