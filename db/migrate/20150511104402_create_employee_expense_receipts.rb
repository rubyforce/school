class CreateEmployeeExpenseReceipts < ActiveRecord::Migration
  def change
    create_table :employee_expense_receipts do |t|
      t.decimal :expense
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
