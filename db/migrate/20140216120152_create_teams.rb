class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :desgination
      t.string :email
      t.string :facebook_url
      t.string :github_id
      t.string :personal_website
      t.text :description

      t.timestamps
    end
  end
end
