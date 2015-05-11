class Expense < ActiveRecord::Base
  has_many :expense_receipts, dependent: :destroy
  has_many :employees, through: :expense_receipts
end
