# frozen_string_literal: true

module Admin
  class ApplicationController < ::ApplicationController
    layout 'admin'

    before_action :authenticate_user!
  end
end
