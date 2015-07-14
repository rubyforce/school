class AddQtyToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :qty, :decimal
  end
end
