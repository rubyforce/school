class AddDateContactForStudents < ActiveRecord::Migration
  def change
    remove_column :employees, :datetime
    add_column :employees, :birthday, :datetime

    add_column :students, :birthday, :date
    add_column :students, :contact_no, :string
    add_column :students, :address, :text
  end
end
