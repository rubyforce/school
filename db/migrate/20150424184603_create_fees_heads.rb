class CreateFeesHeads < ActiveRecord::Migration
  def change
    create_table :fees_heads do |t|
      t.string :name
      t.string :type
      t.string :amount
      t.string :recurrence

      t.timestamps null: false
    end
  end
end
