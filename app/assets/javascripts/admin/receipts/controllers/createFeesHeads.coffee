@receipts.controller 'CreateReceiptsController', [
  '$scope', 'Receipt'
  ($scope, Receipt) ->

    $scope.alert = false

    build = ->

    $scope.create = ->
      new Receipt($scope.receipt).create().then (response) ->
        $scope.receipts.push(new Receipt(response))
        $scope.receipt = build()
        $scope.alert = true
]
