class AddNewFieldForStudents < ActiveRecord::Migration
  def change
    add_column :students, :reason, :text
  end
end
