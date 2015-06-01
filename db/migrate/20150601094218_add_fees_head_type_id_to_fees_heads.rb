class AddFeesHeadTypeIdToFeesHeads < ActiveRecord::Migration
  def change
    add_column :fees_heads, :fees_head_type_id, :integer
  end
end
