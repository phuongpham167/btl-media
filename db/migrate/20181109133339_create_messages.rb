class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :room_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
