@receipts.controller 'ReceiptsController', [
  '$scope', '$state', 'Receipt', 'FeesHead', 'Student', 'Standard', 'Division'
  ($scope, $state, Receipt, FeesHead, Student, Standard, Division) ->
    $state.go('receipts.new')

    Receipt.get().then (receipts) ->
      $scope.receipts = receipts

    FeesHead.get().then (fees_heads) ->
      $scope.fees_heads = fees_heads

    Student.get().then (students) ->
      $scope.students = students

    Standard.get().then (standards) ->
      $scope.standards = standards

    Division.get().then (divisions) ->
      $scope.divisions = divisions
]
