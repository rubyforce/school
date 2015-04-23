class RemoveFinanceModeFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :finance_mode, :string
  end
end
