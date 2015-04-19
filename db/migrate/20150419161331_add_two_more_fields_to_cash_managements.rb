class AddTwoMoreFieldsToCashManagements < ActiveRecord::Migration
  def change
    add_column :cash_managements, :cash_deposited_enabled, :boolean
    add_column :cash_managements, :cash_moved_enabled, :boolean
  end
end
