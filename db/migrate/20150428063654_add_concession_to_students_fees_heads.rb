class AddConcessionToStudentsFeesHeads < ActiveRecord::Migration
  def change
    add_column :students_fees_heads, :concession, :decimal
  end
end
