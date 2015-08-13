class ReceiptsFeesHead < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :fees_head

  def fees_name
    fees_head.name
  end
end
