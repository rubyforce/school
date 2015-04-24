class CreateStudentsFeesHeads < ActiveRecord::Migration
  def change
    create_table :students_fees_heads do |t|
      t.belongs_to :student, index: :true
      t.belongs_to :fees_head, index: :true

      t.timestamps null: false
    end
  end
end
