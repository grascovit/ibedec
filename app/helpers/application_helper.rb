# frozen_string_literal: true

module ApplicationHelper
  def canonical_url
    url = url_for(only_path: false)
    url += '?' if request.query_parameters.any?

    request.query_parameters.each do |key, value|
      url += "#{key}=#{value}"
    end

    url
  end
end
