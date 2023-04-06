# frozen_string_literal: true

class StaticPagesController < ApplicationController
  POST_COUNT = 3

  def home
    @posts = Post.published.sorted_by_date(:desc).limit(POST_COUNT)
  end

  def about; end

  def contact; end
end
