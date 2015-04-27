class StudentsFeesHead < ActiveRecord::Base
  attr_accessible :enabled

  belongs_to :student
  belongs_to :fees_head
end
