class AddNatureIdToExpenseReceipts < ActiveRecord::Migration
  def change
    add_column :expense_receipts, :nature_id, :integer
  end
end
