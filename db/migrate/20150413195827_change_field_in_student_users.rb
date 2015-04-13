class ChangeFieldInStudentUsers < ActiveRecord::Migration
  def change
    change_column :student_users, :admission_date, :string
  end
end
