class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.integer  :user_id, null: false
      t.integer  :work_id, null: false
      t.text     :reflection
      t.text     :spoiler_reflection
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps
    end

    add_index :impressions, :user_id
    add_index :impressions, :work_id
    add_index :impressions, :started_at
    add_index :impressions, :finished_at
  end
end
