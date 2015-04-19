class AddTwoMoreFieldsToCashManagements < ActiveRecord::Migration
  def change
    add_column :cash_managements, :cash_deposited_enabled, :boolean, :default => false
    add_column :cash_managements, :cash_moved_enabled, :boolean, :default => false
  end
end
