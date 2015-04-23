class RemoveStandardFieldFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :standard, :string
  end
end
