class RemoveStdFieldFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :std, :string
  end
end
