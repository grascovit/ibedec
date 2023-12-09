import { Controller } from '@hotwired/stimulus'
import tinymce from 'tinymce'
import 'tinymce/icons/default/icons.min.js'
import 'tinymce/themes/silver/theme.min.js'
import 'tinymce/models/dom/model.min.js'
import 'tinymce/skins/ui/oxide/skin.js'
import 'tinymce/plugins/advlist'
import 'tinymce/plugins/autolink'
import 'tinymce/plugins/autosave'
import 'tinymce/plugins/code'
import 'tinymce/plugins/emoticons'
import 'tinymce/plugins/emoticons/js/emojis'
import 'tinymce/plugins/link'
import 'tinymce/plugins/lists'
import 'tinymce/plugins/media'
import 'tinymce/plugins/preview'
import 'tinymce/plugins/quickbars'
import 'tinymce/plugins/save'
import 'tinymce/plugins/searchreplace'
import 'tinymce/plugins/table'
import 'tinymce/plugins/visualblocks'
import 'tinymce/plugins/visualchars'
import 'tinymce/plugins/wordcount'
import 'tinymce/skins/ui/oxide/content.js'
import 'tinymce/skins/content/default/content.js'
import 'tinymce-i18n/langs/pt_BR'

export default class extends Controller {
  static values = {
    selectors: Array
  }

  connect() {
    this.selectorsValue.forEach(selector => {
      tinymce.remove(selector)
      tinymce.init({
        selector: selector,
        menubar: 'file edit insert view table tools help',
        plugins: 'preview searchreplace autolink autosave save code visualblocks visualchars link media table ' +
          'advlist lists wordcount quickbars emoticons',
        toolbar: 'bold italic underline strikethrough | blocks fontfamily fontsize | ' +
          'align numlist bullist | forecolor backcolor removeformat | link table media | lineheight outdent indent | ' +
          'emoticons | code preview wordcount | undo redo | save print',
        toolbar_mode: 'wrap',
        quickbars_insert_toolbar: '',
        skin_url: 'default',
        content_css: 'default',
        height: 600,
        language: 'pt_BR',
      })
    })
  }

  disconnect() {
    this.selectorsValue.forEach(selector => {
      tinymce.remove(selector)
    })
  }
}
