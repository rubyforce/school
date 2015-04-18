@cash_managements.controller 'CreateExpenseController', [
  '$scope', 'CashManagement', '$modal', 'NatureSharedObjects'
  ($scope, CashManagement, $modal, NatureSharedObjects) ->

    $scope.natures = []

    $scope.openForm = (size) ->
      NatureSharedObjects.modalWindow = $modal.open(
        templateUrl: 'admin/cash_managements/views/settlements/modal.html'
        size: size
        controller: 'CreateExpenseController')
      NatureSharedObjects.modalWindow.result.then (index) ->
        $scope.natures.push (index)

    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.expense).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true

]
