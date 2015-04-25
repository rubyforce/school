@fees_heads.controller 'CreateStudentFeesController', [
  '$scope', 'FeesHead'
  ($scope, FeesHead) ->

    $scope.alert = false

    build = ->

    $scope.create = ->
      new FeesHead($scope.student_fees).create().then (response) ->
        $scope.fees_heads.push(new FeesHead(response))
        $scope.fees_head = build()
        $scope.alert = true
]
