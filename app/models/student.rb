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

  ADMISSION = { admission1: 1, admission2: 2 }
  RELIGION = { religion1: 1, religion2: 2 }
  CASTE = { caste1: 1, caste2: 2 }
  NATIONALITY = { nationality1: 1, nationality2: 2 }
  STANDARD = { standard1: 1, standard2: 2 }
  DIVISION = { division1: 1, division2: 2 }
  TRANSPORT = { car: 1, bus: 2 }
  FINANCE_MODE = { finance1: 1, finance2: 2 }
end
