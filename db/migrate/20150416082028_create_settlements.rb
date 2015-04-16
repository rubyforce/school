class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.decimal :opening_cash,  :default => 500
      t.decimal :cash_paid,     :default => 500
      t.decimal :cash_in_hand,  :default => 4500
      t.string  :cash_deposited
      t.string  :cash_moved
      t.decimal :cash_closing,  :default => 500
      t.string  :remark


      t.timestamps null: false
    end
  end
end
