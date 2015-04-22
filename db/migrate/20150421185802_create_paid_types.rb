class CreatePaidTypes < ActiveRecord::Migration
  def change
    create_table :paid_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
