class AddRemainingAmountToStudents < ActiveRecord::Migration
  def change
    add_column :students, :remaining_amount, :decimal, default: 0
  end
end
