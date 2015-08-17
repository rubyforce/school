class Receipt < ActiveRecord::Base
  has_many   :receipts_fees_heads, :dependent => :destroy
  has_many   :fees_heads, through: :receipts_fees_heads
  belongs_to :student

  accepts_nested_attributes_for :receipts_fees_heads, allow_destroy: true

  before_save :total_sum

  def total_sum
    self.total = self.receipts_fees_heads.map(&:amount).sum
  end
end
