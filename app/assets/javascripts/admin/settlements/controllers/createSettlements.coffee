@settlements.controller 'CreateSettlementsController', [
  '$scope', 'Settlement'
  ($scope, Settlement) ->

    DEFAULT_SETTLEMENT =
      opening_cash: 'Rs. 5000'
      cash_paid:    'Rs. 500'
      cash_in_hand: 'Rs. 4500'
      cash_closing: 'Rs. 500'

    build = -> _.clone(DEFAULT_SETTLEMENT)

    $scope.default = "Rs. 4000"

    $scope.alert = false
    
    $scope.settlement = build()
    
    $scope.create = ->
      new Settlement($scope.settlement).create().then (response) ->
        $scope.settlements.push(new Settlement(response))
        $scope.alert = true
    
]
