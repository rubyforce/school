class ChangeColumnInSalaryReceipts < ActiveRecord::Migration
  def change
    change_column(:salary_receipts, :month, :string)
  end
end
