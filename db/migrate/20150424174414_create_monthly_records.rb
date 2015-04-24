class CreateMonthlyRecords < ActiveRecord::Migration
  def change
    create_table :monthly_records do |t|
      t.string :month
      t.string :item_name
      t.string :ordered
      t.string :received

      t.timestamps null: false
    end
  end
end
