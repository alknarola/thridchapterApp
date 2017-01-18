class AddAttachmentImageToUsermicroposts < ActiveRecord::Migration
  def self.up
    change_table :usermicroposts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :usermicroposts, :image
  end
end
