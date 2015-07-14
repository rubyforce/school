class Standard < ActiveRecord::Base
  has_many :students, dependent: :destroy

  has_many :standards_fees_heads
  has_many :fees_heads, through: :standards_fees_heads

  accepts_nested_attributes_for :standards_fees_heads
end
