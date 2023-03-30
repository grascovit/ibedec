# frozen_string_literal: true

module FlashHelper
  def flash_icon(kind:)
    case kind
    when 'success'
      svg_icon(name: 'check', css_class: 'h-6 w-6 text-white')
    when 'alert'
      svg_icon(name: 'exclamation-triangle', css_class: 'h-6 w-6 text-white')
    else
      svg_icon(name: 'information-circle', css_class: 'h-6 w-6 text-white')
    end
  end

  def flash_background_color(kind:)
    case kind
    when 'alert'
      'bg-red-500'
    else
      'bg-ibedec-blue-200'
    end
  end

  def flash_icon_background_color(kind:)
    case kind
    when 'alert'
      'bg-red-600'
    else
      'bg-ibedec-blue-600'
    end
  end
end
