class Event < ApplicationRecord

  validates :title, presence: true, length: { minimum: 6 }
  validates :location, presence: true, length: {minimum: 3 }

  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :attendances


end
