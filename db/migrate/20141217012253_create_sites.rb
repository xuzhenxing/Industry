class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :industry_id

      t.timestamps
    end
    add_index :sites, [:industry_id, :created_at]
  end
end
