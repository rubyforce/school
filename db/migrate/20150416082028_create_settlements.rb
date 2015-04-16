class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.string :opening_cash
      t.string :cash_paid
      t.string :cash_in_hand
      t.string  :cash_deposited
      t.string  :cash_moved
      t.string :cash_closing
      t.string  :remark


      t.timestamps null: false
    end
  end
end
