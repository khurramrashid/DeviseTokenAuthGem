class RenameAddressToHomeaddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :profiles, :address, :homeaddress
  end
end
