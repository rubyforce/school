class MiddayManagement < ActiveRecord::Base
  attr_accessible :month, :item_name, :ordered, :received, :vegetable, :cook,
                  :date, :qty, :name

  belongs_to :meal
end
