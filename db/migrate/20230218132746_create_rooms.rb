class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.boolean :checked
      t.float :price
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
