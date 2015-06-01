class CreateFeesHeadRecurrences < ActiveRecord::Migration
  def change
    create_table :fees_head_recurrences do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
