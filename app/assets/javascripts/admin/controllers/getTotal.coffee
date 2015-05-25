@admin.controller 'GetTotalController', [
  '$scope'
  ($scope) ->
    
    $scope.getTotalMale = ->
      _($scope.dashboard.students_male).filter((student) ->
        student.gender == 'male'
      ).size()
]
