class AddPhotoToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :photo, :string
  end
end
