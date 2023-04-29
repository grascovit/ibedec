# frozen_string_literal: true

module Admin
  class JudgementsController < ApplicationController
    load_and_authorize_resource

    def index
      @judgements = Judgement.accessible_by(current_ability).sorted_by_date(:desc).page(params[:page])
    end

    def create
      @judgement.user = current_user

      if @judgement.save
        redirect_to admin_judgements_path, success: 'Decisão criada com sucesso'
      else
        render :new
      end
    end

    def update
      if @judgement.update(judgement_params)
        redirect_to admin_judgements_path, success: 'Decisão atualizada com sucesso'
      else
        render :edit
      end
    end

    def destroy
      @judgement.destroy

      redirect_to admin_judgements_path, success: 'Decisão apagada com sucesso', status: :see_other
    end

    private

    def judgement_params
      params.require(:judgement).permit(:title, :body, :category, :slug, :published_at)
    end
  end
end
