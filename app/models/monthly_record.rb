class MonthlyRecord < ActiveRecord::Base
  attr_accessible :month, :item_name, :ordered, :received

  has_many :midday_managements, dependent: :destroy
end
