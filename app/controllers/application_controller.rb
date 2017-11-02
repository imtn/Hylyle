class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_user
  include SessionsHelper

  private
    def get_user
      @user = current_user
    end
end
