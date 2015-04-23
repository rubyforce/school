class AddColumnToMiddayManagements < ActiveRecord::Migration
  def change
    add_column :midday_managements, :meal, :string
  end
end
