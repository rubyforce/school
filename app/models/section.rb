class Section < ActiveRecord::Base
  attr_accessible :title

  belongs_to :employee
end