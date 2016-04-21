class AddLaughToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :laugh, :string
  end
end
