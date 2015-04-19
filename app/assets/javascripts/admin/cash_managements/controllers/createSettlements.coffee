@cash_managements.controller 'CreateSettlementsController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->

    DEFAULT_SETTLEMENT =
      opening_cash: '5000'
      cash_paid:    '500'
      cash_in_hand: '4500'
      cash_closing: '500'

    build = -> _.clone(DEFAULT_SETTLEMENT)

    $scope.default = 4000

    $scope.alert = false

    $scope.settlement = build()

    $scope.create = ->
      debugger
      new CashManagement($scope.settlement).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.settlement = build()
        $scope.alert = true

]
