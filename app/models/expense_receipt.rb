class ExpenseReceipt < ActiveRecord::Base
  has_many :empoyee_expense_receipts
end
