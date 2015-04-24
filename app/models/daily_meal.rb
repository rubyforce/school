class DailyMeal < ActiveRecord::Base
  attr_accessible :meal, :date, :no_of_student1, :no_of_student2, :no_of_student3,
                  :no_of_student4, :no_of_student5, :total_number, :qty

  has_many :midday_managements, dependent: :destroy
end
