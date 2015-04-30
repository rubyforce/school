class Nature < ActiveRecord::Base
  has_many :cash_managements, dependent: :destroy
end
