class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true, allow_blank: false
  validates :address, presence: true
  # validates :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'], allow_blank: false }
end
