class AddColumnToStudentsFeesHeads < ActiveRecord::Migration
  def change
    add_column :students_fees_heads, :amount_concession, :decimal
  end
end
