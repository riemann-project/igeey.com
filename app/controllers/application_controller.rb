# encoding: utf-8
class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  protect_from_forgery

  private

  # def check_admin # unused methods
  #   redirect_to :root unless (current_user && current_user.is_admin?)
  # end
end
