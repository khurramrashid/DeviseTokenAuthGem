class CreateResturants < ActiveRecord::Migration[6.0]
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :location
      t.string :address
      t.integer :contact
      t.integer :price_range
      t.string :cuisine
      t.string :opening_hours
      t.string :payment_option
      t.string :dress_code
      t.string :discription
      t.float :average_rating

      t.timestamps
    end
  end
end
