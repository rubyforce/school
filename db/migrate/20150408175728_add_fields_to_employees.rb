class AddFieldsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :gender, :boolean
    add_column :employees, :address, :text
    add_column :employees, :middle_name, :string
    add_column :employees, :qualification, :string
    add_column :employees, :salary, :integer
    add_column :employees, :contact_no, :integer
    add_column :employees, :entry_no, :string, :default => "auto"
  end
end
