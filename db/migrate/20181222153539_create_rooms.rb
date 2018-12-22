class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :code
      t.references :building, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end
