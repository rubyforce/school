class AddColumnsToMiddayManagements < ActiveRecord::Migration
  def change
    add_column :midday_managements, :no_student1, :decimal
    add_column :midday_managements, :no_student2, :decimal
    add_column :midday_managements, :no_student3, :decimal
    add_column :midday_managements, :no_student4, :decimal
    add_column :midday_managements, :no_student5, :decimal
    add_column :midday_managements, :total, :decimal
  end
end
