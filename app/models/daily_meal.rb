class DailyMeal < ActiveRecord::Base
  has_one :meals, dependent: :destroy
end
