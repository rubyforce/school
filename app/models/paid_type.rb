class PaidType < ActiveRecord::Base
  attr_accessible :title

  belongs_to :employee
end