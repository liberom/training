class Product < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: ['festa de aniversário', 'festa infantil', 'festa corporativa'] }
  validates :price, presence: true
  validates :amount, presence: true
  mount_uploader :photo, PhotoUploader
end
