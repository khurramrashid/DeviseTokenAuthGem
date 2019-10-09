class AddCountToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :image_count, :integer
    add_column :profiles, :reservation, :integer
    add_column :profiles, :reviews, :integer
    add_column :profiles, :points_earned, :integer
  end
end
