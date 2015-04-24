@fees_heads.controller 'CreateFeesHeadsController', [
  '$scope', 'FeesHead'
  ($scope, FeesHead) ->

    $scope.alert = false

    build = ->

    $scope.create = ->
      new FeesHead($scope.fees_head).create().then (response) ->
        $scope.fees_heads.push(new FeesHead(response))
        $scope.fees_head = build()
        $scope.alert = true
]
