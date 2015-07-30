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

    $scope.$watch (-> $scope.settlement.cash_opening - $scope.settlement.cash_paid), (value) ->
      return unless value?
      $scope.settlement.cash_in_hand = value

    $scope.$watch (-> $scope.settlement.cash_in_hand - $scope.settlement.cash_deposited - $scope.settlement.cash_moved), (value) ->
      return unless value?
      $scope.settlement.cash_closing = value

    $scope.settlement = {}

    if(angular.isUndefined($scope.settlement.cash_moved))
      $scope.settlement.cash_moved = 0

    if(angular.isUndefined($scope.settlement.cash_deposited))
      $scope.settlement.cash_deposited = 0

]
