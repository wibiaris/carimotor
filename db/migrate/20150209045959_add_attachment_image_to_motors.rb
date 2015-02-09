class AddAttachmentImageToMotors < ActiveRecord::Migration
  def self.up
    change_table :motors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :motors, :image
  end
end
