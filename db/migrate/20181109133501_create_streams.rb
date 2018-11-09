class CreateStreams < ActiveRecord::Migration[5.2]
  def change
    create_table :streams do |t|
      t.references :user, foreign_key: true
      t.integer :counter

      t.timestamps
    end
    add_index :streams, [:user_id, :created_at]
  end
end
