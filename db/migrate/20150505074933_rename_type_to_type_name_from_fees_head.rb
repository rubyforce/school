class RenameTypeToTypeNameFromFeesHead < ActiveRecord::Migration
  def change
    rename_column :fees_heads, :type, :type_name
  end
end
