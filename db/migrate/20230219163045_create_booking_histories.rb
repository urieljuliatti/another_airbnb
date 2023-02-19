class CreateBookingHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_histories do |t|
      t.integer :room_id
      t.integer :user_id
      t.float :price
      t.integer :total_price
      t.integer :total_time_at_room
      t.boolean :charged
      t.datetime :checkin
      t.datetime :checkout

      t.timestamps
    end
  end
end
