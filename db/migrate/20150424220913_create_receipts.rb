class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :student_id
      t.integer :total
      t.string :bank_name

      t.timestamps null: false
    end
  end
end
