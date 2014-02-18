class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :partner_name
      t.string :website

      t.timestamps
    end
  end
end
