class CreateStandardsFeesHeads < ActiveRecord::Migration
  def change
    create_table :standards_fees_heads do |t|
      t.integer :standard_id
      t.integer :fees_head_id

      t.timestamps null: false
    end
  end
end
