import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchbar"
export default class extends Controller {
  connect() {
    const clearInput = () => {
      const input = document.getElementById("search-bar")[0];
      input.value = "";
    }
  }
}
