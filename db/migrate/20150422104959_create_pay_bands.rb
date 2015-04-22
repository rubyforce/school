class CreatePayBands < ActiveRecord::Migration
  def change
    create_table :pay_bands do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
