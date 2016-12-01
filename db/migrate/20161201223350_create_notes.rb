class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :impression_id, null: false
      t.text :body
      t.boolean :is_spoiler, default: false

      t.timestamps
    end
    add_index :notes, :impression_id
  end
end
