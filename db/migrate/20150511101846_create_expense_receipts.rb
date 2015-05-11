class CreateExpenseReceipts < ActiveRecord::Migration
  def change
    create_table :expense_receipts do |t|
      t.integer :employee_id
      t.integer :salary_id

      t.timestamps null: false
    end
  end
end
