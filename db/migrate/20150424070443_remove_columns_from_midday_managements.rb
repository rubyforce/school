class RemoveColumnsFromMiddayManagements < ActiveRecord::Migration
  def change
    remove_column :midday_managements, :no_student1, :decimal
    remove_column :midday_managements, :no_student2, :decimal
    remove_column :midday_managements, :no_student3, :decimal
    remove_column :midday_managements, :no_student4, :decimal
    remove_column :midday_managements, :no_student5, :decimal
    remove_column :midday_managements, :total, :decimal
  end
end
