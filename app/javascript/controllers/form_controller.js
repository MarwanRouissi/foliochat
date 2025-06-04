import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  reset() {
    this.element.reset()
  }

  submitOnEnter(event) {
    if (event.keyCode === 13) {
      this.element.requestSubmit();
    }
  }
}
