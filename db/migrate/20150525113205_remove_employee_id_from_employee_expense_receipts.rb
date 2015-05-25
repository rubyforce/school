class RemoveEmployeeIdFromEmployeeExpenseReceipts < ActiveRecord::Migration
  def change
    remove_column :employee_expense_receipts, :employee_id, :integer
  end
end
