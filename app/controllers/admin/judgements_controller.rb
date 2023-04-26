# frozen_string_literal: true

module Admin
  class JudgementsController < ApplicationController
    load_and_authorize_resource
  end
end
