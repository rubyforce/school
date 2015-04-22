class RemoveReligionFieldFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :religion, :string
  end
end
