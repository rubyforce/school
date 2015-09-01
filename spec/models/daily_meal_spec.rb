require 'spec_helper'

describe DailyMeal do
  context "Before save" do
    let!(:daily_meal_meal1) {create(:daily_meal_meal)}
    let!(:daily_meal_meal2) {create(:daily_meal_meal)}
    let!(:daily_meal) {create(:daily_meal)}

    before {daily_meal.save}

    it "should assigned amount of students" do
      daily_meal.no_of_student1 == 10
      daily_meal.no_of_student2 == 15
      daily_meal.no_of_student3 == 20
      daily_meal.no_of_student4 == 25
      daily_meal.no_of_student5 == 30
    end
  end
end
