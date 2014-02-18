class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :job_name
      t.text :description
      t.text :how_to_apply

      t.timestamps
    end
  end
end
