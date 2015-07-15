class AddMoreFieldsForMonthlyRecords < ActiveRecord::Migration
  def change
    remove_column :monthly_records, :item_name
    remove_column :monthly_records, :ordered
    remove_column :monthly_records, :received

    add_column :monthly_records, :expense, :string
    add_column :monthly_records, :cooks, :string
  end
end
