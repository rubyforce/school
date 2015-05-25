class CreateDailyMeals < ActiveRecord::Migration
  def change
    create_table :daily_meals do |t|
      t.datetime :date
      t.decimal  :no_of_student1
      t.decimal  :no_of_student2
      t.decimal  :no_of_student3
      t.decimal  :no_of_student4
      t.decimal  :no_of_student5
      t.decimal  :total_number
      t.decimal  :qty
      t.string   :meal

      t.timestamps null: false
    end
  end
end
