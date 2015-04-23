class Nature < ActiveRecord::Base
  attr_accessible :title

  has_many :cash_managements, dependent: :destroy
end
