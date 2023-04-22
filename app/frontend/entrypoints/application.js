import * as Turbo from '@hotwired/turbo'
Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()
//

import Alpine from 'alpinejs'
window.Alpine = Alpine
Alpine.start()

import '../controllers'
