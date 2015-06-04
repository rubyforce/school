class CreateDailyMealMeals < ActiveRecord::Migration
  def change
    create_table :daily_meal_meals do |t|
      t.integer :meal_id
      t.integer :daily_meal_id

      t.timestamps null: false
    end
  end
end
