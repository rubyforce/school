@fees_heads.controller 'CreateStudentFeesController', [
  '$scope', 'FeesHead'
  ($scope, FeesHead) ->

    $scope.alert = false

    $scope.bySelectors = (student) ->
        if $scope.search?.standardId? && $scope.search?.divisionId?
            return student.divisionId is parseInt($scope.search.divisionId, 10) && student.standardId is parseInt($scope.search.standardId, 10)
        else if $scope.search?.standardId?
            return student.standardId is parseInt($scope.search.standardId, 10)
        else if $scope.search?.divisionId?
            return student.divisionId is parseInt($scope.search.divisionId, 10)

        true

    $scope.create = ->
      # TODO: where is studentsFeesHeads?
      debugger

      $scope.student.update().then (response) ->
          $scope.alert = true

    $scope.isEnabled = (fees_head) ->
        _.contains $scope.student?.studentsFeesHeads?,
            (search_head) ->
                parseInt(search_head.fees_head.id, 10) is parseInt(fees_head.id, 10)
]
