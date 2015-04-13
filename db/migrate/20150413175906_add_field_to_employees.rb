class AddFieldToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :datetime, :string
  end
end
