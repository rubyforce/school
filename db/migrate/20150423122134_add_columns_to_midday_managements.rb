class AddColumnsToMiddayManagements < ActiveRecord::Migration
  def change
    add_column :midday_managements, :no_student_1, :decimal
    add_column :midday_managements, :no_student_2, :decimal
    add_column :midday_managements, :no_student_3, :decimal
    add_column :midday_managements, :no_student_4, :decimal
    add_column :midday_managements, :no_student_5, :decimal 
  end
end
