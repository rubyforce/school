@fees_heads.controller 'CancelReceiptsController', [
  '$scope', 'Receipt', '$filter'
  ($scope, Receipt, $filter) ->

    $scope.alert = false

    $scope.clicked = false

    $scope.cash = true
    $scope.bank_info = false

    reset = ->
      $scope.remark = ''
      $scope.number = ''

    $scope.find = ->
      Receipt.query(number: $scope.number).then (response) ->
        $scope.receipt = response[0]

        if $scope.receipt
          $scope.clicked = true

          total = _($scope.receipt.receiptsFeesHeads)
            .chain()
            .sum('amount')
          $scope.total = $filter('number')(total.value())
        else
          $scope.alert = true

        if $scope.receipt.bankName && $scope.receipt.chequeNumber
          $scope.cash = false
          $scope.bank_info = true
        else
          $scope.cash = true
          $scope.bank_info = false

    $scope.cancel = ->
      if $scope.receipt
        if (confirm("Do you want to save?"))
          $scope.receipt = new Receipt(id:  $scope.receipt.id)
          $scope.receipt.status = "canceled"
          $scope.receipt.remark = $scope.remark
          $scope.receipt.update()
          reset()
]
