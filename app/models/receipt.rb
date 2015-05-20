class Receipt < ActiveRecord::Base
  has_many   :receipts_fees_heads, :dependent => :destroy
  has_many   :fees_heads, through: :receipts_fees_heads
  belongs_to :student

  accepts_nested_attributes_for :receipts_fees_heads, allow_destroy: true

  def remaining_amount
    sum = fees_heads.sum(:amount)
    cash - sum
  end
end
