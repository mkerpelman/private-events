class Event < ApplicationRecord

  validates :title, presence: true, length: { minimum: 6 }
  validates :location, presence: true, length: {minimum: 3 }

end
