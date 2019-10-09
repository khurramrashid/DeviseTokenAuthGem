class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phno, :int
    add_column :users, :alert, :bool
  end
end
