class PayBand < ActiveRecord::Base
  attr_accessible :title

  has_many :empolyees
end
