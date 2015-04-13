class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email, :null => false, :default => ""
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
