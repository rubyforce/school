class RemoveUnusedFieldsFromFeesHeads < ActiveRecord::Migration
  def change
    remove_column :fees_heads, :class
    remove_column :fees_heads, :division
    remove_column :fees_heads, :student_name
    remove_column :fees_heads, :difference
    change_column :fees_heads, :concession, :decimal
  end
end
