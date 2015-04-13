class RenameStudentUsersToStudents < ActiveRecord::Migration
  def change
    rename_table :student_users, :students
  end 
end
