class Web::ApplicationController < ApplicationController
  protect_from_forgery
  layout "web/application"

  helper_method :title, :headline

  before_filter :set_locale

  private

  def title(part = nil)
    @parts ||= [t(".dating")]
    unless part
      return nil if @parts.blank?
      return @parts.join(' - ')
    end
    @parts << part
  end

  def headline(title = nil)
    @headline = title if title
    @headline
  end

  def set_locale
    I18n.locale= params[:locale] || I18n.default_locale
    default_url_options[:locale] = params[:locale]
  end

end
