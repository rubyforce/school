class AddDifferenceToFeesHeads < ActiveRecord::Migration
  def change
    add_column :fees_heads, :difference, :integer
  end
end
