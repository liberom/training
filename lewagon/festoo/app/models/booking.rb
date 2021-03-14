class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user
  # belongs_to :user_seller
end
