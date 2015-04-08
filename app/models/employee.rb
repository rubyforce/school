class Employee < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :job_title, :email, :gender, :address, 
									:middle_name, :qualification, :salary, :contact_no, :entry_no
end
