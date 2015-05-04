class FixReceiptsColumns < ActiveRecord::Migration
  def change
    change_column :receipts, :total, :decimal, default: 0.0
    change_column :receipts, :bank_name, :text

    add_column :receipts, :date, :datetime
    add_column :receipts, :cash, :decimal, default: 0.0
  end
end
