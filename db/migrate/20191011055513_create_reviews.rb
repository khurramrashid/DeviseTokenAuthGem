class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.string :massage
      t.bigint :rating_id
      t.bigint :resturant_id

      t.timestamps
    end
  end
end
