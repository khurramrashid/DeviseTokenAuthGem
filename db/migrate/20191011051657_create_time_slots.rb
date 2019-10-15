class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.string :slot_available, array: true, default: []
      t.bigint :resturant_id

      t.timestamps
    end
  end
end
