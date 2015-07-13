class CreateFeesHeadsStandards < ActiveRecord::Migration
  def change
    create_table :fees_heads_standarts do |t|
      t.belongs_to :fees_head, index: true
      t.belongs_to :standard, index: true

      t.timestamps null: false
    end
  end
end
