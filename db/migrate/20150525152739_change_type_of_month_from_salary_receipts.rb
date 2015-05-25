class ChangeTypeOfMonthFromSalaryReceipts < ActiveRecord::Migration
  def change
    remove_column :salary_receipts, :month, :string
    add_column :salary_receipts, :month, :datetime
  end
end
