# frozen_string_literal: true

class StaticPagesController < ApplicationController
  POST_COUNT = 3

  def home
    @posts = Post.published.sorted_by_date(:desc).limit(POST_COUNT)
  end

  def about; end

  def contact; end

  def consumer_content; end

  def construction_content; end

  def sfh_sfi_content; end

  def social_security_content; end
end
