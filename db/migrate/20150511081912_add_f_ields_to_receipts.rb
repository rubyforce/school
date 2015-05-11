class AddFIeldsToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :status, :string
    add_column :receipts, :remark, :string
  end
end
