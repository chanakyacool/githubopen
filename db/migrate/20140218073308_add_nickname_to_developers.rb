class AddNicknameToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :nickname, :string
  end
end
