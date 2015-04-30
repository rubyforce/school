class Employee < ActiveRecord::Base
  belongs_to :cash_management
	belongs_to :paid_type
	belongs_to :section
	belongs_to :pay_band
end
