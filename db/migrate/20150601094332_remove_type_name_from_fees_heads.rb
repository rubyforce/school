class RemoveTypeNameFromFeesHeads < ActiveRecord::Migration
  def change
    remove_column :fees_heads, :type_name, :string
  end
end
