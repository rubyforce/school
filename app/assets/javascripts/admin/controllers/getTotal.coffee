@admin.controller 'GetTotalController', [
  '$scope'
  ($scope) ->

    $scope.getTotalMale = ->
      _($scope.students).filter((student) ->
        student.gender == 'male'
      ).size()
    $scope.getTotalFemale = ->
      _($scope.students).filter((student) ->
        student.gender == 'female'
      ).size()
]
