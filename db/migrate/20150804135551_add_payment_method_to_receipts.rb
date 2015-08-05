class AddPaymentMethodToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :payment_method, :boolean, :default => false
  end
end
