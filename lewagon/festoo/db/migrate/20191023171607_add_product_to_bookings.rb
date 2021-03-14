class AddProductToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :product, null: false, foreign_key: true
  end
end
