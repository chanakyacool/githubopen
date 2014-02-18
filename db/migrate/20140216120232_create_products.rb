class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :domain
      t.text :description
      t.text :features

      t.timestamps
    end
  end
end
