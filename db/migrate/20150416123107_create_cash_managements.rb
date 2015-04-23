class CreateCashManagements < ActiveRecord::Migration
  def change
    create_table :cash_managements do |t|
      t.decimal  :cash_opening
      t.decimal  :cash_paid
      t.decimal  :cash_in_hand
      t.decimal   :cash_deposited
      t.decimal   :cash_moved
      t.decimal  :cash_closing
      t.string   :remark
      t.string   :expense_made
      t.string   :nature_expense
      t.string   :payment
      t.string   :authorized_by
      t.decimal  :amount
      t.string   :expense_by
      t.string   :month
      t.string   :year

      t.timestamps null: false
    end
  end
end
