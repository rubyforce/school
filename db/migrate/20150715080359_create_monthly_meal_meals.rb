class CreateMonthlyMealMeals < ActiveRecord::Migration
  def change
    create_table :monthly_meal_meals do |t|
      t.integer :meal_id
      t.integer :monthly_record_id
      t.decimal :left
      t.decimal :last_received
      t.decimal :used
      t.decimal :ordered
      t.decimal :received_this_month

      t.timestamps null: false
    end
  end
end
