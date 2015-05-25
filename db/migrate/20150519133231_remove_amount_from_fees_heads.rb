class RemoveAmountFromFeesHeads < ActiveRecord::Migration
  def change
    remove_column :fees_heads, :amount, :sting
  end
end
