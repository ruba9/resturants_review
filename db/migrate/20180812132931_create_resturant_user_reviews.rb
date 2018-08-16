class CreateResturantUserReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :stars
      t.references :user, foreign_key: true, index: true
      t.references :resturant, foreign_key: true, index: true

      t.timestamps
    end
  end
end
