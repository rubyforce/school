class AddTotalNumberToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :total_number, :decimal
  end
end
