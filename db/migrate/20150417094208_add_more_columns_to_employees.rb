class AddMoreColumnsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :paid_type, :string
    add_column :employees, :section, :string
    add_column :employees, :pay_band, :string
    add_column :employees, :year, :string
  end
end
