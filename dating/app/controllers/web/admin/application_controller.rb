class Web::Admin::ApplicationController < Web::ApplicationController
  protect_from_forgery

  before_filter :authenticate_user!
  helper_method :current_user, :signed_in?
end
