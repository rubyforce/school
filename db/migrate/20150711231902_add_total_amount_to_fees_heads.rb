class AddTotalAmountToFeesHeads < ActiveRecord::Migration
  def change
    add_column :fees_heads, :total_amount, :decimal
  end
end
