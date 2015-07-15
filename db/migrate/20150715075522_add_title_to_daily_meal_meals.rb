class AddTitleToDailyMealMeals < ActiveRecord::Migration
  def change
    add_column :daily_meal_meals, :title, :string
  end
end
