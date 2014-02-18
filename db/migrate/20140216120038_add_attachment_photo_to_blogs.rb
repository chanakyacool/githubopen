class AddAttachmentPhotoToBlogs < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :blogs, :photo
  end
end
