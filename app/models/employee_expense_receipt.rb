class EmployeeExpenseReceipt < ActiveRecord::Base
  belongs_to :employee
  belongs_to :expense_by, class_name: "CashManagement"
  belongs_to :authorized_by, class_name: "CashManagement"
end
