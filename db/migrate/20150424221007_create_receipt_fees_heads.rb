class CreateReceiptFeesHeads < ActiveRecord::Migration
  def change
    create_table :receipt_fees_heads do |t|

      t.timestamps null: false
    end
  end
end
