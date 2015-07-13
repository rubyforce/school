class FeesHead < ActiveRecord::Base
  has_many :students_fees_heads
  has_many :students, through: :students_fees_heads

  has_many :fees_heads_standards
  has_many :standards, through: :fees_heads_standards

  belongs_to :fees_head_type
  belongs_to :fees_head_recurrence

  accepts_nested_attributes_for :students

  accepts_nested_attributes_for :standards

  before_save :total

  private
    def total
      self.total_amount = amount * fees_head_recurrence.name.to_f
    end
end
