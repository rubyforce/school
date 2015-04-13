class Employee < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :job_title, :status, :gender, :address, 
	:middle_name, :qualification, :salary, :contact_no, :entry_no, :datetime

  validates_presence_of :first_name, :last_name, :gender

  MARRIED = 1
  NOT_MARRIED = 2
end
