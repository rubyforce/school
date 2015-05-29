class RemoveAcademicRangeFieldsFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :academic_year_from, :date
    remove_column :students, :academic_year_to, :date
  end
end
