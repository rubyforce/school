class Receipt < ActiveRecord::Base
  attr_accessible :student_id

  has_many   :receipts_fees_heads
  has_many   :fees_heads, through: :receipts_fees_heads
  belongs_to :student
end
