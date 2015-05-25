class DropEmployeeExpenseReceiptsTable < ActiveRecord::Migration
  def change
    drop_table :employee_expense_receipts
  end
end
