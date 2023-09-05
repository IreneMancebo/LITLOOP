import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="icon-heart"
export default class extends Controller {
  static targets = ["heart"]

  connect() {
  }

  favored_nook() {
    this.heartTarget.classList.add("clicked")
  }

}
