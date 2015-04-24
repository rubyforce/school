@fees_heads.controller 'FeesHeadsController', [
  '$scope', '$state', 'FeesHead'
  ($scope, $state, FeesHead) ->
    $state.go('fees_heads.new')

    FeesHead.get().then (fees_heads) ->
      $scope.fees_heads = fees_heads
]
