class CreateReceiptsFeesHeads < ActiveRecord::Migration
  def change
    create_table :receipts_fees_heads do |t|
      t.belongs_to :receipt, index: :true
      t.belongs_to :fees_head, index: :true

      t.timestamps
    end
  end
end
