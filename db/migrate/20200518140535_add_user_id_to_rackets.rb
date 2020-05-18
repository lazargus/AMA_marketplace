class AddUserIdToRackets < ActiveRecord::Migration[6.0]
  def change
    add_reference :rackets, :user, foreign_key: true
  end
end
