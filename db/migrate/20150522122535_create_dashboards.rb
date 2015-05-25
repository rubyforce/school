class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :students_female
      t.string :students_male
      
      t.timestamps null: false
    end
  end
end
