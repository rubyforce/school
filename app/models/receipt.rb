class Receipt < ActiveRecord::Base
  has_many   :receipts_fees_heads
  has_many   :fees_heads, through: :receipts_fees_heads
  belongs_to :student

  accepts_nested_attributes_for :fees_heads
end
