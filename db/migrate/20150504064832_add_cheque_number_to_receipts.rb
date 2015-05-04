class AddChequeNumberToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :cheque_number, :string
  end
end
