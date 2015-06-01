class RemoveRecurrenceFromFeesHeads < ActiveRecord::Migration
  def change
    remove_column :fees_heads, :recurrence, :string
  end
end
