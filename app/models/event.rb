class Event < ActiveRecord::Base
  attr_accessible :description, :ends_at, :name, :starts_at

  belongs_to :user
  has_many :subscriptions, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 200}
  validates :user_id, presence: true

  default_scope order: 'events.starts_at ASC'
end
