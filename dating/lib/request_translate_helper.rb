module RequestTranslateHelper
  def sex_translate(key)
    scope = [:activerecord, :attributes, :request, :sexs]
    t(key, :scope => scope)
  end
end
