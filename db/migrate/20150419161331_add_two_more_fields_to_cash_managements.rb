class AddTwoMoreFieldsToCashManagements < ActiveRecord::Migration
  def change
    add_column :cash_managements, :cash_deposited_enabled, :decimal
    add_column :cash_managements, :cash_moved_enabled, :decimal
  end
end
