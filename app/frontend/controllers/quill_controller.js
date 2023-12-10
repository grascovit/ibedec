import { Controller } from '@hotwired/stimulus'
import 'quill/dist/quill.snow.css'
import Quill from 'quill'

export default class extends Controller {
  static targets = ['editor']

  connect() {
    this.form = this.editorTarget.closest('form')
    this.field = document.getElementById(this.editorTarget.dataset.fieldId)
    this.editor = new Quill(this.editorTarget, {
      theme: 'snow',
      modules: {
        toolbar: [
          [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
          ['bold', 'italic', 'underline', 'strike'],
          ['blockquote', 'code-block'],
          [{ 'list': 'ordered'}, { 'list': 'bullet' }],
          [{ 'script': 'sub'}, { 'script': 'super' }],
          [{ 'indent': '-1'}, { 'indent': '+1' }],
          [{ 'color': [] }, { 'background': [] }],
          [{ 'font': [] }],
          [{ 'align': [] }],
          ['clean'],
          ['link', 'video']
        ]
      }
    })

    if (this.field.value) {
      const html = this.field.value
      const delta = this.editor.clipboard.convert(html)
      this.editor.setContents(delta)
    }

    this.form.addEventListener('submit', (event) => {
      this.field.value = this.editor.root.innerHTML
    })
  }
}
