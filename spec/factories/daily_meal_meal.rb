FactoryGirl.define do
  factory :daily_meal_meal do
    no_of_student1 10
    no_of_student2 15
    no_of_student3 20
    no_of_student4 25
    no_of_student5 30
    total_number 100
    qty 5

    after(:build) do |meal|
      create(:meal, title: "Rice")
    end
  end
end
