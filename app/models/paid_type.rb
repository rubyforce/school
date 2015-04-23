class PaidType < ActiveRecord::Base
  attr_accessible :title

  has_many :empolyees, dependent: :destroy
end
