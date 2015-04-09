class StudentUser < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :division, :transport,
    :admission_date, :birth_place, :religion, :caste, :std, :nationality, :standard,
    :finance_mode, :entry_no, :group_no, :academic_year, :father_name, :mother_name,
    :remarks, :last_school

  admission = [SOMETHING1 = 1, SOMETHING2 = 2]
  place_of_birth = [BELARUS = 1, USA = 2, INDIA = 3]
  religion = [RELIGION1 = 1, RELIGION2 = 2]
  caste = [CASTE1 = 1, CASTE2 = 2]
  nationality = [NATIONALITY1 = 1, NATIONALITY2 = 2]
  standard = [STANDARD1 = 1, STANDARD2 = 2]
  division = [DIVISION1 = 1, DIVISION2 = 2]
  transport = [CAR = 1, BUS = 2]
  finance_mode = [FINANCE1 = 1, FINANCE2 = 2]
end
