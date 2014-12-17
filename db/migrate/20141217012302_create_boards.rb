class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :url
      t.integer :site_id

      t.timestamps
    end
    add_index :boards, [:site_id, :created_at]
  end
end
