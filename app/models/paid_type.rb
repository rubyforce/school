class PaidType < ActiveRecord::Base
  validates :title, case_sensitive: false

  has_many :empolyees, dependent: :destroy
end
