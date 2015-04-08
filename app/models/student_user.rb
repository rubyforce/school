class StudentUser < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :email
end
