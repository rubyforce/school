class DailyMeal < ActiveRecord::Base
  has_many :daily_meal_meals
  has_many :meals, through: :daily_meal_meals

  accepts_nested_attributes_for :daily_meal_meals

  before_save :no_of_students

  def no_of_students
    self.daily_meal_meals.each do |e|
      self.no_of_student1 = e.no_of_student1
      self.no_of_student2 = e.no_of_student2
      self.no_of_student3 = e.no_of_student3
      self.no_of_student4 = e.no_of_student4
      self.no_of_student5 = e.no_of_student5
    end
  end
end
