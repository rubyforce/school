class Addedfieldtostudents < ActiveRecord::Migration
  def change
    add_column :students, :bounced, :boolean, default: false
  end
end
