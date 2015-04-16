@cash_managements.controller 'CreateSettlementsController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->

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
      new CashManagement($scope.settlement).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true
    
]
