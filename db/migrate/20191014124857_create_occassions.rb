class CreateOccassions < ActiveRecord::Migration[6.0]
  def change
    create_table :occassions do |t|
      t.string :name
      t.bigint :resturant_id

      t.timestamps
    end
  end
end
