class AddAdmissionIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :admission_id, :integer
  end
end
