# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    def new
      redirect_to root_path
    end

    def create
      redirect_to root_path
    end
  end
end
