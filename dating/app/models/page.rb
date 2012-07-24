class Page < ActiveRecord::Base
  include UsefullScopes

  attr_accessible :body, :slug, :state, :title

  validates :title, :presence => true
  validates :body, :presence => true
  validates :slug, :presence => true

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
