@midday_managements.factory "Food", [
  Food = (attributes) ->
    this.date = attributes.date
    this.no_of_student1 = attributes.no_of_student1
    this.no_of_student2 = attributes.no_of_student2
    this.no_of_student3 = attributes.no_of_student3
    this.no_of_student4 = attributes.no_of_student4
    this.no_of_student5 = attributes.no_of_student5
    this.meal = attributes.meal
    this.qty = attributes.qty

    Food
]