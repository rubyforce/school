class AddReceivedToMonthlyMealMeals < ActiveRecord::Migration
  def change
    add_column :monthly_meal_meals, :received, :decimal
  end
end
