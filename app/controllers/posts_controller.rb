# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show]

  # GET /posts
  def index
    @posts = Post.published.sorted_by_date(:desc)
  end

  # GET /posts/1
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.published.find(params[:id])
  end
end
