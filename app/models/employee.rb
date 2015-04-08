class Employee < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :job_title, :email
end
