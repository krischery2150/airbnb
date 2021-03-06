class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  validates :list_name, presence: true, length: {maximum: 50}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true
  # validates :is_tv, presence: true
  # validates :is_kitchen, presence: true
  # validates :is_air, presence: true
  # validates :is_heating, presence: true
  # validates :is_internet, presence: true
  # validates :price, presence: true
  # validates :active, presence: true
  # validates :home_type, presence: true


end
