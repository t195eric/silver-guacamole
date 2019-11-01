class Place < ApplicationRecord
  belongs_to :user

  validates :name, length: { minimum: 3}, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode
end
