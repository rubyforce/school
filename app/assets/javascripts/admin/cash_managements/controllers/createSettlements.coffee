@cash_managements.controller 'CreateSettlementsController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->
    $scope.alert = false
    debugger
    $scope.create = ->
      new CashManagement($scope.settlement).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.settlement = {}
        $scope.alert = true

    $scope.total = ->
      $scope.settlement.cash_in_hand  = $scope.settlement.cash_opening - $scope.settlement.cash_paid

    $scope.totalAmount = ->
      if(angular.isUndefined($scope.settlement.cash_moved))
        $scope.settlement.cash_moved = 0
      if(angular.isUndefined($scope.settlement.cash_deposited))
        $scope.settlement.cash_deposited = 0

      $scope.settlement.cash_closing  = $scope.settlement.cash_in_hand - $scope.settlement.cash_deposited -
                                        $scope.settlement.cash_moved
]
