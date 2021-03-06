class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :description, presence: true, length: { minimum: 5 }
  validates :title, presence: true, uniqueness: true
  validates :address, presence: true
  validates :calendar, presence: true
  validates :limit_of_guest, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :type_of_meal, presence: true
  validates :type_of_event, presence: true, inclusion: { in: ['Breakfast', 'Lunch', 'Dinner'] }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def sold_out?
    bookings.sum(&:number_of_guests) >= limit_of_guest
  end
end
