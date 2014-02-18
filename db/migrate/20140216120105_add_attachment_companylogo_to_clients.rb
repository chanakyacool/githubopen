class AddAttachmentCompanylogoToClients < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.attachment :companylogo
    end
  end

  def self.down
    drop_attached_file :clients, :companylogo
  end
end
