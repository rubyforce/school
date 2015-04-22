class Employee < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :job_title, :status, :gender, :address,
                  :middle_name, :qualification, :salary, :contact_no, :entry_no,
                  :datetime, :paid_type, :section, :pay_band, :salary_check, :remark


  belongs_to :cash_management
	belongs_to :paid_type
end
