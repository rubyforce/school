class AddConcessionToReceiptsFeesHeads < ActiveRecord::Migration
  def change
    add_column :receipts_fees_heads, :concession, :decimal
  end
end
