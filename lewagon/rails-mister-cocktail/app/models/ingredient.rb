class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true
  validates :name, uniqueness: true, allow_blank: false
end
