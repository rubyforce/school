class FeesHead < ActiveRecord::Base
  has_many :students_fees_heads
  has_many :students, through: :students_fees_heads

  accepts_nested_attributes_for :students
end
