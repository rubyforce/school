class FeesHead < ActiveRecord::Base
  attr_accessible :name, :amount, :type, :reccurence

  has_many :students_fees_heads
  has_many :student, through: :students_fees_heads
end
