class AddAmountToReceiptsFeesHeads < ActiveRecord::Migration
  def change
    add_column :receipts_fees_heads, :amount, :decimal
  end
end
