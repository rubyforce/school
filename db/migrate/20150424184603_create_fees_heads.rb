class CreateFeesHeads < ActiveRecord::Migration
  def change
    create_table :fees_heads do |t|
      t.string :name
      t.string :type
      t.decimal :amount
      t.string :recurrence
      t.string :class
      t.string :division
      t.string :student_name

      t.timestamps
    end
  end
end
