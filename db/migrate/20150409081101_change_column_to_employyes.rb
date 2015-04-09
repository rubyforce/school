class ChangeColumnToEmployyes < ActiveRecord::Migration
  def change
  	change_column :employees, :gender, :string, :null => false
  end
end
