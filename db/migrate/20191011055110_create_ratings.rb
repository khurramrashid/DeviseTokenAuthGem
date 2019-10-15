class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :food
      t.integer :service
      t.integer :ambiance
      t.string :noise
      t.integer :overall_rating
      t.integer :average_rating
      t.bigint :resturant_id

      t.timestamps
    end
  end
end
