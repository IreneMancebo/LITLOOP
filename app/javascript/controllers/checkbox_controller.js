import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  connect() {
    console.log(this.element)
  }

  toggleBox(event){
    console.log("hello")
  }
}
