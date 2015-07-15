class ChangeDailyMealsColumns < ActiveRecord::Migration
  def change
    remove_column :daily_meals, :no_of_student1
    remove_column :daily_meals, :no_of_student2
    remove_column :daily_meals, :no_of_student3
    remove_column :daily_meals, :no_of_student4
    remove_column :daily_meals, :no_of_student5
    remove_column :daily_meals, :meal
    remove_column :daily_meals, :qty

    add_column :daily_meal_meals, :no_of_student1, :integer, default: 0
    add_column :daily_meal_meals, :no_of_student2, :integer, default: 0
    add_column :daily_meal_meals, :no_of_student3, :integer, default: 0
    add_column :daily_meal_meals, :no_of_student4, :integer, default: 0
    add_column :daily_meal_meals, :no_of_student5, :integer, default: 0

    add_column :daily_meal_meals, :total_number, :integer, default: 0
    add_column :daily_meal_meals, :qty, :decimal, default: 0.0
  end
end
