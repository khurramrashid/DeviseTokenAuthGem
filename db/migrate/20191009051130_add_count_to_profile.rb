class AddCountToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :imagecount, :integer
    add_column :profiles, :reservation, :integer
    add_column :profiles, :reviews, :integer
    add_column :profiles, :pointsearned, :integer
  end
end
