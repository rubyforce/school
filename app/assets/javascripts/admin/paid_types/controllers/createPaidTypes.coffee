@paid_types.controller 'CreatePaidTypesController', [
  '$scope', 'PaidType', '$modal', 'PaidTypesSharedObjects'
  ($scope, PaidType, $modal, PaidTypesSharedObjects) ->

    $scope.openForm = (size) ->
      PaidTypesSharedObjects.modalWindow = $modal.open(
        templateUrl: 'admin/paid_types/views/paid_types/modal.html'
        size: size
        controller: 'CreatePaidTypesController')
      PaidTypesSharedObjects.modalWindow.result.then (response) ->
        $scope.title = index
        $scope.paid_types.push (new PaidType(response))

    $scope.create = ->
      debugger
      new PaidType($scope.paid_type).create().then (response) ->
        $scope.paid_types.push(new PaidType(response))
        PaidTypesSharedObjects.modalWindow.close({title: $scope.paid_type})
]
