class StudentsFeesHead < ActiveRecord::Base
  attr_accessible :enabled, :student_id, :fees_head_id, :concession, :_destroy

  attr_accessor :enabled

  belongs_to :student
  belongs_to :fees_head
end
