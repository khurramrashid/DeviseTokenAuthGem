class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.attachment :image
      t.bigint :resturant_id

      t.timestamps
    end
  end
end