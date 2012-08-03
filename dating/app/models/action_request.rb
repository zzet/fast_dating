class ActionRequest < ActiveRecord::Base
  include UsefullScopes

  attr_accessible :birthdate,
                  :cost,
                  :coupone_code,
                  :email,
                  :name,
                  :phone,
                  :sex

  belongs_to :dating_event

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
