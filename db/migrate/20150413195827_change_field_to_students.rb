class ChangeFieldToStudents < ActiveRecord::Migration
  def change
    change_column :students, :admission_date, :string
  end
end
