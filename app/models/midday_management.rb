class MiddayManagement < ActiveRecord::Base
  belongs_to :meal
  belongs_to :daily_meal
  belongs_to :montly_record
end
