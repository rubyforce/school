class AddNoOfStudentsToDailyMeal < ActiveRecord::Migration
  def change
    add_column :daily_meals, :no_of_student1, :integer
    add_column :daily_meals, :no_of_student2, :integer
    add_column :daily_meals, :no_of_student3, :integer
    add_column :daily_meals, :no_of_student4, :integer
    add_column :daily_meals, :no_of_student5, :integer
  end
end
