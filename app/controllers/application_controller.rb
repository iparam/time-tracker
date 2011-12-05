class ApplicationController < ActionController::Base
	protect_from_forgery
  before_filter :authenticate_user!,:load_account

  def load_account
    @account ||= current_user.account if current_user
  end
end
