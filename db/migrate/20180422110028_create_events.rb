class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :user_id

      t.timestamps
    end
    add_index :events, [:user_id, :created_at]
  end
end
