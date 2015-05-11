class FieldsForReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :cheque_status, :string
    add_column :receipts, :cheque_remark, :string
  end
end
