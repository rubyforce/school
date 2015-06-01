class FeesHead < ActiveRecord::Base
  has_many :students_fees_heads
  has_many :students, through: :students_fees_heads

  belongs_to :fees_head_type

  accepts_nested_attributes_for :students
end
