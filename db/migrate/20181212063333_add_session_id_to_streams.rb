class AddSessionIdToStreams < ActiveRecord::Migration[5.2]
  def change
    add_column :streams, :session_id, :string
  end
end
