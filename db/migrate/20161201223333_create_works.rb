class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title, null: false
      t.integer :artist_id
      t.string :medium
      t.string :link

      t.timestamps
    end
    add_index :works, :artist_id
    add_index :works, :title
    add_index :works, :medium
  end
end
