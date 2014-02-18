class AddAttachmentPhotoPhoto1ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :photo
      t.attachment :photo1
    end
  end

  def self.down
    drop_attached_file :products, :photo
    drop_attached_file :products, :photo1
  end
end
