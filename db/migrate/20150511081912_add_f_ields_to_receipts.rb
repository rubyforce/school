class AddFIeldsToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :cancel, :string
    add_column :receipts, :remark, :string
  end
end
