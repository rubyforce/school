User.destroy_all
# Project.destroy_all

User.create do |user|
  user.name                  = "Super Admin"
  user.email                 = "admin@example.com"
  user.password              = "password"
  user.password_confirmation = "password"
  user.role                  = 'admin'
  user.status                = 'approved'
end

User.create do |user|
  user.name                  = "John Watson"
  user.email                 = "user@estates.com"
  user.password              = "12345678"
  user.password_confirmation = "12345678"
end

Employee.create do |employee|
  employee.first_name        = "Artsiom"
  employee.last_name         = "Slabodnik"
  employee.gender            = "male"
end

Employee.create do |employee|
  employee.first_name        = "Zahar"
  employee.last_name         = "Slabodnik"
  employee.gender            = "male"
end

Employee.create do |employee|
  employee.first_name        = "Valera"
  employee.last_name         = "Slabodnik"
  employee.gender            = "male"
end

Employee.create do |employee|
  employee.first_name        = "Alexander"
  employee.last_name         = "Slabodnik"
  employee.gender            = "male"
end
