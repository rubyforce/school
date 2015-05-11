class ExpenseReceipt < ActiveRecord::Base
  belongs_to :employee
  belongs_to :expense
end
