class Changecolumnofdailymeals < ActiveRecord::Migration
  def change
    change_column :daily_meals, :date, :date
  end
end
