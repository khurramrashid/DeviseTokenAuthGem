class RenameAddressToHomeaddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :profiles, :address, :home_address
  end
end
