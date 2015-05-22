@admin.controller 'GetTotalController', [
  '$scope'
  ($scope) ->

    $scope.getTotalMale = ->
      _($scope.dashboard.students_male).filter((student) ->
        student.gender == 'male'
      ).size()
    $scope.getTotalFemale = ->
      _($scope.dashboard.students_female).filter((student) ->
        student.gender == 'female'
      ).size()
    $scope.getTotalGovtPay = ->
      _($scope.employees).filter((employee) ->
        employee.paidType(employees) == 'government pay'
      ).size()
]
