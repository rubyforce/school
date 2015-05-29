class ChangeEmployeesColumn < ActiveRecord::Migration
  def change
    change_column :employees, :gender, :string, :null => true
  end
end
