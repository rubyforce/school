class CreateAcademicYears < ActiveRecord::Migration
  def change
    create_table :academic_years do |t|
      t.string :range

      t.timestamps null: false
    end
  end
end
