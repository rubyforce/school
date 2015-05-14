class ExpenseReceipt < ActiveRecord::Base
  has_many :employee_expense_receipts

  accepts_nested_attributes_for :employee_expense_receipts
end
