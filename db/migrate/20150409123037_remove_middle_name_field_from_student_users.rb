class RemoveMiddleNameFieldFromStudentUsers < ActiveRecord::Migration
  def change
    remove_column :student_users, :middle_name, :string
  end
end
