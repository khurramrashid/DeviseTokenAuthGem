class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :total_person
      t.string :special_request
      t.integer :user_contact
      t.string :note
      t.bigint :user_id
      t.bigint :resturant_id
      t.bigint :time_slot_id

      t.timestamps
    end
  end
end
