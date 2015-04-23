class AddTransportIdForStudents < ActiveRecord::Migration
  def change
    add_column :students, :transport_id, :integer
  end
end
