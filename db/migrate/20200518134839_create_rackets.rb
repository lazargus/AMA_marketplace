class CreateRackets < ActiveRecord::Migration[6.0]
  def change
    create_table :rackets do |t|
      t.text :description
      t.string :model
      t.integer :year
      t.date :availability
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
