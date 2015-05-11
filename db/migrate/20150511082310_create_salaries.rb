class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :year
      t.string :month
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
