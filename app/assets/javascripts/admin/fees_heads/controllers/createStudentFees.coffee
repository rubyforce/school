@fees_heads.controller 'CreateStudentFeesController', [
  '$scope', 'FeesHead'
  ($scope, FeesHead) ->

    $scope.alert = false

    $scope.bySelectors = (student) ->
        if $scope.student_fees?.class? && $scope.student_fees?.division?
            return student.divisionId is parseInt($scope.student_fees.division, 10) && student.standardId is parseInt($scope.student_fees.class, 10)
        else if $scope.student_fees?.class?
            return student.standardId is parseInt($scope.student_fees.class, 10)
        else if $scope.student_fees?.division?
            return student.standardId is parseInt($scope.student_fees.class, 10)

        true

    build = ->

    $scope.create = ->
      new FeesHead($scope.student_fees).create().then (response) ->
        $scope.fees_heads.push(new FeesHead(response))
        $scope.fees_head = build()
        $scope.alert = true
]
