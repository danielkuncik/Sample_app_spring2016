class AddPictureToJoke < ActiveRecord::Migration
  def change
    add_column :jokes, :picture, :string
  end
end
