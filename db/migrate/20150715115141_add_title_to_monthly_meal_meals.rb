class AddTitleToMonthlyMealMeals < ActiveRecord::Migration
  def change
    add_column :monthly_meal_meals, :title, :string
  end
end
