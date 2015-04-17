class CashManagement < ActiveRecord::Base
  attr_accessible :cash_opening, :cash_paid, :cash_in_hand, :cash_deposited, :cash_moved,
                  :cash_closing, :remark, :expense_made, :nature_expense, :payment,
                  :authorized_by, :amount, :expense_by

  belongs_to :employee
end
