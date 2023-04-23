# frozen_string_literal: true

class PostsController < ApplicationController
  POSTS_PER_PAGE = 6

  before_action :set_post, only: %i[show]

  def index
    @posts = Post.published.sorted_by_date(:desc).page(params[:page]).per(POSTS_PER_PAGE)
  end

  def show; end

  private

  def set_post
    @post = Post.published.find_by!(slug: params[:slug])
  end
end
