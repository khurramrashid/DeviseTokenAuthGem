class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :points_giving
      t.string :deals_giving
      t.bigint :resturant_id
      t.bigint :time_slot_id

      t.timestamps
    end
  end
end
