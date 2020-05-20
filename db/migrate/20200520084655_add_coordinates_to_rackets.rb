class AddCoordinatesToRackets < ActiveRecord::Migration[6.0]
  def change
    add_column :rackets, :latitude, :float
    add_column :rackets, :longitude, :float
  end
end
