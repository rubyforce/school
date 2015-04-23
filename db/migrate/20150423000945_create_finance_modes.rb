class CreateFinanceModes < ActiveRecord::Migration
  def change
    create_table :finance_modes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
