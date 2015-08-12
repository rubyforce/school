class ReceiptsFeesHead < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :fees_head

  def name
    fees_head.name
  end
end
