class AddAttachmentPhoto1Photo2Photo3ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
    end
  end

  def self.down
    drop_attached_file :portfolios, :photo1
    drop_attached_file :portfolios, :photo2
    drop_attached_file :portfolios, :photo3
  end
end
