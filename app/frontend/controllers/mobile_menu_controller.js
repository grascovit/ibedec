import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [
    'menu',
    'openButton',
    'closeButton'
  ]

  connect() {
    this.menuTarget.classList.add('hidden')
  }

  open(event) {
    event.preventDefault()

    this.menuTarget.classList.remove('hidden')
    this.openButtonTarget.classList.add('hidden')
    this.closeButtonTarget.classList.remove('hidden')
  }

  close(event) {
    event.preventDefault()

    this.menuTarget.classList.add('hidden')
    this.openButtonTarget.classList.remove('hidden')
    this.closeButtonTarget.classList.add('hidden')
  }
}
