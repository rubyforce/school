class AddFeesHeadRecurrenceIdToFeesHeads < ActiveRecord::Migration
  def change
    add_column :fees_heads, :fees_head_recurrence_id, :integer
  end
end
