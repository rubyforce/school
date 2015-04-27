class Student < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :admission_date, :birth_place,
    :nationality, :entry_no, :group_no, :academic_year, :father_name, :mother_name,
    :remarks, :last_school, :admission_id, :religion_id, :caste_id, :standard_id,
    :division_id, :transport_id, :finance_mode_id

  belongs_to :admission
  belongs_to :religion
  belongs_to :caste
  belongs_to :standard
  belongs_to :division
  belongs_to :transport
  belongs_to :finance_mode

  has_many   :students_fees_heads, :dependent => :destroy
  has_many   :fees_heads, through: :students_fees_heads
  has_many   :receipts, :dependent => :destroy

  accepts_nested_attributes_for :fees_heads, :allow_destroy => true
  accepts_nested_attributes_for :receipts, :allow_destroy => true
end
