class AddTitleToStreams < ActiveRecord::Migration[5.2]
  def change
    add_column :streams, :title, :string
  end
end
