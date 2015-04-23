class CreateNatures < ActiveRecord::Migration
  def change
    create_table :natures do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
