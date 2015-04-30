class MonthlyRecord < ActiveRecord::Base
  has_many :midday_managements, dependent: :destroy
end
