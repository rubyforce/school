class AddRemarkToEmployeeSalaryReceipts < ActiveRecord::Migration
  def change
    add_column :employee_salary_receipts, :remark, :text
  end
end
