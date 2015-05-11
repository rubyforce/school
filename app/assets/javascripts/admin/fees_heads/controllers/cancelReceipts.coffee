@fees_heads.controller 'CancelReceiptsController', [
  '$scope', 'Receipt'
  ($scope, Receipt) ->

    $scope.alert = false

    $scope.clicked = false

    reset = ->
      $scope.remark = ''
      $scope.number = ''


    $scope.find = ->
      Receipt.query(number: $scope.number).then (response) ->
        debugger
        $scope.receipt = response[0]
        $scope.clicked = true

    $scope.cancel = ->
        if $scope.receipt
          $scope.receipt.status = "Canceled"
          $scope.receipt.remark = $scope.remark
    
          $scope.receipt.update()
          reset()

        else 
          $scope.alert = true
]
