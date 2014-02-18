class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip
      t.string :client_project
      t.text :project_description
      t.date :project_start_date
      t.date :project_dude_date

      t.timestamps
    end
  end
end
