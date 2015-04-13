class AddFieldsToStudentUsers < ActiveRecord::Migration
  def change
    add_column :student_users, :entry_no, :string, :default => "auto"
    add_column :student_users, :group_no, :integer
    add_column :student_users, :admission_date, :date
    add_column :student_users, :std, :string
    add_column :student_users, :academic_year, :string, :default => "auto"
    add_column :student_users, :father_name, :string
    add_column :student_users, :mother_name, :string
    add_column :student_users, :birth_place, :string
    add_column :student_users, :religion, :string
    add_column :student_users, :caste, :string
    add_column :student_users, :nationality, :string
    add_column :student_users, :standard, :string
    add_column :student_users, :division, :string
    add_column :student_users, :transport, :string
    add_column :student_users, :finance_mode, :string
    add_column :student_users, :remarks, :string
    add_column :student_users, :last_school, :string
  end
end
