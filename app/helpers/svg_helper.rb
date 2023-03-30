# frozen_string_literal: true

module SvgHelper
  def svg_icon(name:, css_class: '')
    svg_content = File.read("app/frontend/images/icons/#{name}.svg")
    svg_content.gsub('<svg', "<svg class='#{css_class}'").html_safe # rubocop:disable Rails/OutputSafety
  end
end
