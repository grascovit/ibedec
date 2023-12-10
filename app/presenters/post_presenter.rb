# frozen_string_literal: true

class PostPresenter
  attr_reader :post

  def initialize(post)
    @post = post
  end

  def body_text
    return '' if post.body.blank?

    Nokogiri::HTML(post.body).text
  end
end
