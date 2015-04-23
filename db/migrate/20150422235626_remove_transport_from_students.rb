class RemoveTransportFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :transport, :string
  end
end
