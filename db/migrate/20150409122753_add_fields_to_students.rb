class AddFieldsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :entry_no, :string, :default => "auto"
    add_column :students, :group_no, :integer
    add_column :students, :admission_date, :date
    add_column :students, :std, :string
    add_column :students, :academic_year, :string, :default => "auto"
    add_column :students, :father_name, :string
    add_column :students, :mother_name, :string
    add_column :students, :birth_place, :string
    add_column :students, :religion, :string
    add_column :students, :caste, :string
    add_column :students, :nationality, :string
    add_column :students, :standard, :string
    add_column :students, :division, :string
    add_column :students, :transport, :string
    add_column :students, :finance_mode, :string
    add_column :students, :remarks, :string
    add_column :students, :last_school, :string
  end
end
