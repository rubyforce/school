class Meal < ActiveRecord::Base
  attr_accessible :title

  has_many :midday_managements, dependent: :destroy
end
