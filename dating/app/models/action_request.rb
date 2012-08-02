class ActionRequest < ActiveRecord::Base
  attr_accessible :birthdate,
                  :cost,
                  :coupone_code,
                  :email,
                  :name,
                  :phone,
                  :sex

  class << self
    def avaliable_sexs
      [:male, :female]
    end
  end

  def human_sex_name
    scope = [:activerecord, :attributes, :request, :sexs]
    I18n.t(sex, :scope => scope)
  end
end
