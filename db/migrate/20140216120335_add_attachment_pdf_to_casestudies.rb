class AddAttachmentPdfToCasestudies < ActiveRecord::Migration
  def self.up
    change_table :casestudies do |t|
      t.attachment :pdf
    end
  end

  def self.down
    drop_attached_file :casestudies, :pdf
  end
end
