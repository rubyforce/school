class ChangeColumnsInEmployees < ActiveRecord::Migration
  def change
  	change_column :employees, :gender, :string
  	change_column :employees, :salary, :decimal
  	change_column :employees, :contact_no, :string 
  end
end
