class DatingEvent < ActiveRecord::Base
  include UsefullScopes

  attr_accessible :description,
                  :event_date,
                  :limit,
                  :name,
                  :place_id,
                  :state,
                  :time_end,
                  :time_start

  has_many :action_requests
  belongs_to :place

  state_machine :state, :initial => :unpublished do
    state :unpublished
    state :published

    event :publish do
      transition [:unpublished] => :published
    end

    event :unpublish do
      transition [:published] => :unpublished
    end
  end

  scope :published, with_state(:published)
  scope :unpublished, with_state(:unpublished)

end
