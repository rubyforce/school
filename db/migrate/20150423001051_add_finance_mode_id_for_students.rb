class AddFinanceModeIdForStudents < ActiveRecord::Migration
  def change
    add_column :students, :finance_mode_id, :integer
  end
end
