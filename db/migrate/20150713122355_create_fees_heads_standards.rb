class CreateFeesHeadsStandards < ActiveRecord::Migration
  def change
    create_table :fees_heads_standards do |t|
      t.belongs_to :fees_head, index: true
      t.belongs_to :standard, index: true

      t.timestamps null: false
    end
  end
end
