class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.time :checkin
      t.time :checkout

      t.timestamps
    end
  end
end
