class AddDateContactForStudents < ActiveRecord::Migration
  def change
    rename_column :employees, :datetime, :birthday
    change_column :employees, :birthday, :date

    add_column :students, :birthday, :date
    add_column :students, :contact_no, :string
    add_column :students, :address, :text
  end
end
