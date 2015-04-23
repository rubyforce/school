class AddStandardIdForStudents < ActiveRecord::Migration
  def change
    add_column :students, :standard_id, :integer
  end
end
