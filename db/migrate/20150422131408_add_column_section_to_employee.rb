class AddColumnSectionToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :paid_type_id, :integer
    add_column :employees, :section_id, :integer
    add_column :employees, :pay_band_id, :integer
  end
end
