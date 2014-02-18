class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :project_name
      t.string :description
      t.string :project_website

      t.timestamps
    end
  end
end
