# frozen_string_literal: true

module Admin
  class PostsController < ApplicationController
    load_and_authorize_resource

    def index
      @posts = Post.accessible_by(current_ability).sorted_by_date(:desc).page(params[:page])
    end

    def create
      @post.user = current_user

      if @post.save
        redirect_to admin_posts_path, success: 'Notícia criada com sucesso'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @post.update(post_params)
        redirect_to admin_posts_path, success: 'Notícia atualizada com sucesso'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @post.destroy

      redirect_to admin_posts_path, success: 'Notícia apagada com sucesso', status: :see_other
    end

    private

    def post_params
      params.require(:post).permit(:title, :body, :published_at, :cover_image)
    end
  end
end
