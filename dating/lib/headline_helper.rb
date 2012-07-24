module HeadlineHelper
  def headline_translate(key)
    scope = [:headlines, :controllers]
    scope += params[:controller].split('/')
    scope << params[:action]

    t(key, :scope => scope)
  end
end
