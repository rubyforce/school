class AddColumnToCashManagements < ActiveRecord::Migration
  def change
    add_column :cash_managements, :nature_expense_id, :integer

    remove_column :cash_managements, :nature_expense, :string
  end
end
