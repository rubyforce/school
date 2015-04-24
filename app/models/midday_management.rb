class MiddayManagement < ActiveRecord::Base
  attr_accessible :month, :item_name, :ordered, :received, :vegetable, :cook

  belongs_to :meal
  belongs_to :daily_meal
end
