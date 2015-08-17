class Newfieldsformonthlymealmeals < ActiveRecord::Migration
  def change
    add_column :monthly_meal_meals, :expense, :string
    add_column :monthly_meal_meals, :cooks, :string
  end
end
