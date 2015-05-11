class CreateSalaryReceipts < ActiveRecord::Migration
  def change
    create_table :salary_receipts do |t|
      t.string :year
      t.string :month

      t.timestamps null: false
    end
  end
end
