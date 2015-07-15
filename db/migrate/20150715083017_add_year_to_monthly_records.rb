class AddYearToMonthlyRecords < ActiveRecord::Migration
  def change
    add_column :monthly_records, :year, :string
  end
end
