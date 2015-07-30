class Changecolumnofreceupts < ActiveRecord::Migration
  def change
    change_column :receipts, :date, :date
  end
end
