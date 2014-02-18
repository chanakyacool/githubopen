class AddAttachmentPhoto1Photo2Photo3ToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
    end
  end

  def self.down
    drop_attached_file :services, :photo1
    drop_attached_file :services, :photo2
    drop_attached_file :services, :photo3
  end
end
