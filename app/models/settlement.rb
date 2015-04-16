class Settlement < ActiveRecord::Base
  attr_accessible :opening_cash, :cash_paid, :cash_in_hand, :cash_deposited, :cash_moved,
                  :cash_closing, :remark 
end
