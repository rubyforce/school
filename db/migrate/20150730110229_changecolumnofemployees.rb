class Changecolumnofemployees < ActiveRecord::Migration
  def change
    change_column :employees, :birthday, :date
  end
end
