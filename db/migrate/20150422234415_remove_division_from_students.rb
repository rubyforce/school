class RemoveDivisionFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :division, :string
  end
end
