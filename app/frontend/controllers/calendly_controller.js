import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = []
  static values = {
    url: String
  }

  openModal(event) {
    event.preventDefault()

    Calendly.initPopupWidget({url: this.urlValue})
  }
}
