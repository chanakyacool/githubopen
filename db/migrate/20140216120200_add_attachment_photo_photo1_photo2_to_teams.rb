class AddAttachmentPhotoPhoto1Photo2ToTeams < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.attachment :photo
      t.attachment :photo1
      t.attachment :photo2
    end
  end

  def self.down
    drop_attached_file :teams, :photo
    drop_attached_file :teams, :photo1
    drop_attached_file :teams, :photo2
  end
end
