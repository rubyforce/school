class Receipt < ActiveRecord::Base
  has_many   :receipts_fees_heads, :dependent => true
  has_many   :fees_heads, through: :receipts_fees_heads
  belongs_to :student

  accepts_nested_attributes_for :receipts_fees_heads, allow_destroy: true
end
