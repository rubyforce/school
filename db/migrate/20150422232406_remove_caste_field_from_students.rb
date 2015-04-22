class RemoveCasteFieldFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :caste, :string
  end
end
