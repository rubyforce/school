class RemoveColumnsFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :paid_type, :string
    remove_column :employees, :section, :string
    remove_column :employees, :pay_band, :string
  end
end
