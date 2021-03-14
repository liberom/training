class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      # t.references :product_id, null: false, foreign_key: true
      t.date :b_date
      t.date :e_date
      t.boolean :payment_status
      # t.references :user_id, null: false, foreign_key: true
      # t.references :user_seller, null: false, foreign_key: true
      t.integer :sched_qty
      t.string :deliv_status

      t.timestamps
    end
  end
end
