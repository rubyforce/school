class AddCasteIdFieldForStudents < ActiveRecord::Migration
  def change
    add_column :students, :caste_id, :integer
  end
end
