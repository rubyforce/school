@cash_managements.controller 'CreateSettlementsController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->

    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.settlement).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.settlement = {}
        $scope.alert = true

    $scope.settlement = build()

    $scope.settlement.cash_paid = getTotal()

    $scope.total = ->
      $scope.settlement.cash_in_hand  = $scope.settlement.cash_opening - $scope.settlement.cash_paid

    $scope.totalAmount = ->
      $scope.settlement.cash_closing  = $scope.settlement.cash_in_hand - $scope.settlement.cash_deposited -
                                        $scope.settlement.cash_moved
]
