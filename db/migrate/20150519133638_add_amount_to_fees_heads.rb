class AddAmountToFeesHeads < ActiveRecord::Migration
  def change
    add_column :fees_heads, :amount, :decimal
  end
end
