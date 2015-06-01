class CreateFeesHeadTypes < ActiveRecord::Migration
  def change
    create_table :fees_head_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
