class Booking < ApplicationRecord
  belongs_to :event
  has_many :users

  validates :number_of_guests, presence: true
end
