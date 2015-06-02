class FeesHead < ActiveRecord::Base
  has_many :students_fees_heads
  has_many :students, through: :students_fees_heads

  has_many :standards_fees_heads
  has_many :standards, through: :standards_fees_heads

  belongs_to :fees_head_type
  belongs_to :fees_head_recurrence

  accepts_nested_attributes_for :students

  accepts_nested_attributes_for :standards
end
