import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [
    'message'
  ]

  connect() {
    setTimeout(() => {
      this.messageTargets.forEach(message => message.style.display = 'none')
    }, 7000)
  }

  dismiss(event) {
    event.currentTarget.parentElement.style.display = 'none'
  }
}
