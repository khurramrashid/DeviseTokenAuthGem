class AddAttachmentImageToProfiles < ActiveRecord::Migration[6.0]
  def self.up
    change_table :profiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :profiles, :image
  end
end
