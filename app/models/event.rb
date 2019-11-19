class Event < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :title, presence: true
  validates :address, presence: true
  validates :type_of_meal, presence: true
  validates :type_of_event, presence: true, inclusion: { in: ['breakfast', 'lunch', 'dinner'] }
end
