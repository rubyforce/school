class CreateExpenseReceipts < ActiveRecord::Migration
  def change
    create_table :expense_receipts do |t|
      t.string :expense_made
      t.string :nature_of_expense
      t.string :payment_made
      t.string :authorized_by
      t.decimal :amount
      t.string :expense_by

      t.timestamps null: false
    end
  end
end
