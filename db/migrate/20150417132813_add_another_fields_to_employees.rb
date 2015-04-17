class AddAnotherFieldsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :salary_check, :string
    add_column :employees, :remark, :string
  end
end
