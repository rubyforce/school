class CreateEmployeeSalaryReceipts < ActiveRecord::Migration
  def change
    create_table :employee_salary_receipts do |t|
      t.decimal :salary
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
