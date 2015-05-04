class AddNumberToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :number, :string
  end
end
