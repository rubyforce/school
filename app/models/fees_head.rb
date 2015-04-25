class FeesHead < ActiveRecord::Base
  attr_accessible :name, :amount, :type, :reccurence, :class, :division, :student_name

  has_many :students_fees_heads
  has_many :student, through: :students_fees_heads

  accepts_nested_attributes_for :students
end
