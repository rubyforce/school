class AddAcademicYearIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :academic_year_id, :integer
  end
end
