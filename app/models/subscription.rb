class Subscription < ActiveRecord::Base
  attr_accessible :event_id, :user_id

  belongs_to :user, class_name: "User"
  belongs_to :event, class_name: "Event"

  validates :user_id, presence: true
  validates :event_id, presence: true
end
