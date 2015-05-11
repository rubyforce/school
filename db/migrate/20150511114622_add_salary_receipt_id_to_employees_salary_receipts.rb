class AddSalaryReceiptIdToEmployeesSalaryReceipts < ActiveRecord::Migration
  def change
    add_column :employee_salary_receipts, :salary_receipt_id, :integer
  end
end
