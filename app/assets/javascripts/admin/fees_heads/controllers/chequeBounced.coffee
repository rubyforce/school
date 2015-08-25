@fees_heads.controller 'ChequeBouncedController', [
  '$scope', 'Receipt', 'Student'
  ($scope, Receipt, Student) ->

    $scope.alert = false

    reset = ->
      $scope.cheque_remark = ''
      $scope.cheque_number = ''

    $scope.cheque = ->
      Receipt.query(cheque_number: $scope.cheque_number).then (response) ->
        $scope.receipt = response[0]

        $scope.student = response[0].student

        if $scope.receipt
          if (confirm("Do you want to save?"))
            $scope.receipt = new Receipt(id:  $scope.receipt.id)
            $scope.student = new Student(id:  $scope.student.id)
            $scope.receipt.cheque_status = "bounced"
            $scope.student.bounced = true
            $scope.receipt.cheque_remark = $scope.cheque_remark
            $scope.receipt.update()
            $scope.student.update()
            reset()
        else
          $scope.alert = true
]
