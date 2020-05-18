class ChangeAvailableColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :rackets, :availability
    add_column :rackets, :availability, :boolean, default: true
  end
end
