class AddDivisionIdForStudents < ActiveRecord::Migration
  def change
    add_column :students, :division_id, :integer
  end
end
