class Employee < ActiveRecord::Base
  belongs_to :cash_management
	belongs_to :paid_type
	belongs_to :section
	belongs_to :pay_band

  has_many :salary_receipts, dependent: :destroy
  has_many :salaries, through: :salary_receipts

  has_many :expense_receipts, dependent: :destroy
  has_many :expenses, through: :expense_receipts
end
