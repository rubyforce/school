class RenameColumnInCashManagements < ActiveRecord::Migration
  def change
    rename_column :cash_managements, :nature_expense_id, :nature_id
  end
end
