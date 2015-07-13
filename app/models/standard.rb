class Standard < ActiveRecord::Base
  has_many :students, dependent: :destroy

  has_and_belongs_to_many :fees_heads, join_table: :fees_heads_standarts

  accepts_nested_attributes_for :fees_heads
end
