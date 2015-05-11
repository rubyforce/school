class CreatePlaceOfBirths < ActiveRecord::Migration
  def change
    create_table :place_of_births do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
