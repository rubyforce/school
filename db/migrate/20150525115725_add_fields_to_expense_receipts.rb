class AddFieldsToExpenseReceipts < ActiveRecord::Migration
  def change
    add_column :expense_receipts, :expense_by_id, :integer
    add_column :expense_receipts, :authorized_by_id, :integer
  end
end
