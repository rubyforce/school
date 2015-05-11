class ChangeAcademicYear < ActiveRecord::Migration
  def change
    add_column :students, :academic_year_from, :date
    add_column :students, :academic_year_to, :date
    remove_column :students, :academic_year
  end
end
