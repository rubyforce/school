@fees_heads.controller 'CancelReceiptsController', [
  '$scope', 'Receipt'
  ($scope, Receipt) ->

    $scope.alert = false

    reset = ->
      $scope.remark = ''
      $scope.number = ''



    $scope.cancel = ->
      Receipt.query(number: $scope.number).then (response) ->
        $scope.receipt = response[0]

        if $scope.receipt
          $scope.receipt.status = "cancel"
          $scope.receipt.remark = $scope.remark
    
          $scope.receipt.update()
          reset()

        else 
          $scope.alert = true
]
