class Meal < ActiveRecord::Base
  has_many :daily_meals, dependent: :destroy
end
