class Employee < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :job_title, :status, :gender, :address,
                  :middle_name, :qualification, :salary, :contact_no, :entry_no,
                  :datetime, :paid_type, :section, :pay_band, :salary_check, :remark,
									:paid_type_id, :section_id, :pay_band_id, :year, :id, :created_at, :updated_at



  belongs_to :cash_management
	belongs_to :paid_type
	belongs_to :section
	belongs_to :pay_band
end
