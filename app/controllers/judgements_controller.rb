# frozen_string_literal: true

class JudgementsController < ApplicationController
  JUDGEMENTS_PER_PAGE = 6

  def index
    @judgements = Judgement.sorted_by_date(:desc).page(params[:page]).per(JUDGEMENTS_PER_PAGE)
  end
end
