class Employee < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :job_title, :status, :gender, :address, 
	:middle_name, :qualification, :salary, :contact_no, :entry_no

	def self.status
    [["Married", 1], ["Not married", 2]]
  end
end
