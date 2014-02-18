class CreateCasestudies < ActiveRecord::Migration
  def change
    create_table :casestudies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
