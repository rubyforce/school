class RemoveFieldsFromExpenseReceipts < ActiveRecord::Migration
  def change
    remove_column :expense_receipts, :expense_by, :string
    remove_column :expense_receipts, :authorized_by, :string
  end
end
