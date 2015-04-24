class Meal < ActiveRecord::Base
  attr_accessible :title

  has_many :daily_meals, dependent: :destroy
end
