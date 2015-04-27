class AddConcessionToFeesHeads < ActiveRecord::Migration
  def change
    add_column :fees_heads, :concession, :integer
  end
end
