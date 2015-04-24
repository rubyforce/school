class CreateMiddayManagements < ActiveRecord::Migration
  def change
    create_table :midday_managements do |t|
      t.string :month
      t.string :item_name
      t.string :ordered
      t.string :received
      t.string :vegetable
      t.string :cook

      t.timestamps null: false
    end
  end
end
