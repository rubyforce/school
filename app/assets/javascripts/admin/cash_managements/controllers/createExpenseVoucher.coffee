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
        $scope.title = index
        $scope.natures.push ($scope.title)

    $scope.add = ->
      NatureSharedObjects.modalWindow.close
        nature_expense: $scope.title

    $scope.close = ->
      NatureSharedObjects.modalWindow.dismiss 'cancel'

    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.expense).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true

]
