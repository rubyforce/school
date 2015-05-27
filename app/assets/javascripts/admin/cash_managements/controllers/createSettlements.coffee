@cash_managements.controller 'CreateSettlementsController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->

    debugger

    $scope.$watchCollection $scope.expense_receipts, (collection) ->
      $scope.settlement.cash_paid = _($scope.expense_receipts).sum()

    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.settlement).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.settlement = {}
        $scope.alert = true

    getTotal = ->
      _.sum $scope.expense_receipts, (expense) ->
        expense.amount

    SUM = 
      cash_paid: getTotal()

    build = -> _.clone(SUM)

    $scope.settlement = build()

    $scope.settlement.cash_paid = getTotal()

    $scope.total = ->
      $scope.settlement.cash_in_hand  = $scope.settlement.cash_opening - $scope.settlement.cash_paid

    $scope.totalAmount = ->
      $scope.settlement.cash_closing  = $scope.settlement.cash_in_hand - $scope.settlement.cash_deposited -
                                        $scope.settlement.cash_moved
]
