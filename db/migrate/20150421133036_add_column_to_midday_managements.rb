class AddColumnToMiddayManagements < ActiveRecord::Migration
  def change
    add_column :midday_managements, :name, :string
  end
end
