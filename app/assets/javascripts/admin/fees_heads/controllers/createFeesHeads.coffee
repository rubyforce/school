@fees_heads.controller 'CreateFeesHeadsController', [
  '$scope', 'FeesHead'
  ($scope, FeesHead) ->
    $scope.alert = false

    $scope.fees_head = new FeesHead()

    $scope.select = (fees_head) ->
      $scope.fees_head = fees_head

    $scope.new = ->
        $scope.fees_head = new FeesHead()

    $scope.remove = (fees_head) ->
        fees_head.delete()
        _.remove($scope.fees_heads, fees_head)

    $scope.create = ->
      if $scope.fees_head.isNew()
          new FeesHead($scope.fees_head).create().then (response) ->
            $scope.fees_heads.push(new FeesHead(response))
            $scope.fees_head = new FeesHead()
            $scope.alert = true
      else
          $scope.fees_head.update().then (response) ->
            $scope.fees_head = build()
            $scope.alert = true
]
