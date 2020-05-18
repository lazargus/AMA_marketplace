class CreateUserReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :user_reviews do |t|
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
