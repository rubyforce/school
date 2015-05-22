class Dashboard < ActiveRecord::Base
  belongs_to :student
  belongs_to :employee
  belongs_to :cash_management
  belongs_to :fees_head
  belongs_to :midday_management
end
