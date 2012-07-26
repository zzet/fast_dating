class ApplicationController < ActionController::Base
  protect_from_forgery
  include AuthHelper
  include FlashHelper
  include HeadlineHelper
  include RequestTranslateHelper
end
