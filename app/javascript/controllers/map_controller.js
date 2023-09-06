// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/bertchdg/clm7m5ebm011701nz5h0xafuy"
    })
    if (this.hasMarkersValue) {
      this.#addMarkersToMap()
      this.#fitMapToMarkers()
    }
    this.myLocation()
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
}
