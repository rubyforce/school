@paid_types.controller 'CreatePaidTypesController', [
  '$scope', 'PaidType', '$modal', 'PaidTypesSharedObjects'
  ($scope, PaidType, $modal, PaidTypesSharedObjects) ->

    $scope.openForm = (size) ->
      PaidTypesSharedObjects.modalWindow = $modal.open(
        templateUrl: 'admin/paid_types/views/paid_types/modal.html'
        size: size
        controller: 'CreatePaidTypesController')
      PaidTypesSharedObjects.modalWindow.result.then (index) ->
        $scope.title = index
        $scope.paid_types.push ($scope.title)

    $scope.create = ->
      debugger
      new PaidType($scope.paid_type).create().then (response) ->
        $scope.paid_types.push(new PaidType(response))
]
