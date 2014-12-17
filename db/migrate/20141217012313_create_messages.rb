class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :url
      t.string :user_name
      t.string :title
      t.text :content
      t.integer :read_count
      t.integer :comment_count
      t.text :user_info
      t.boolean :is_high_quality
      t.integer :board_id
      t.integer :site_id
      t.integer :industry_id

      t.timestamps
    end
    add_index :messages, [:board_id, :site_id, :industry_id]
  end
end
