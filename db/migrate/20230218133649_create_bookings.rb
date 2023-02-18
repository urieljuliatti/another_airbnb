class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.time :checkin
      t.time :checkout
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
