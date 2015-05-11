class RemoveSalaryFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :salary, :decimal
  end
end
