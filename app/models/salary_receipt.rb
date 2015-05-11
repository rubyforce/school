class SalaryReceipt < ActiveRecord::Base
  has_many :empoyee_salary_receipts
end
