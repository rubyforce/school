@cash_managements.controller 'CreateSettlementsController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->

    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.settlement).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.settlement = {}
        $scope.alert = true

]
