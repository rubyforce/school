class Salary < ActiveRecord::Base
  has_many :salary_receipts, dependent: :destroy
  has_many :employees, through: :salary_receipts
end
