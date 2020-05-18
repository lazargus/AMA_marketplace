class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :racket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
