class AddReligionIdForStudents < ActiveRecord::Migration
  def change
    add_column :students, :religion_id, :integer
  end
end
