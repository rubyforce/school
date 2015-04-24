@receipts.controller 'ReceiptsController', [
  '$scope', '$state', 'Receipt' 'FeesHead', 'Student'
  ($scope, $state, Receipt FeesHead, Student) ->

    Receipt.get().then (receipts) ->
      $scope.receipts = receipts

    FeesHead.get().then (fees_heads) ->
      $scope.fees_heads = fees_heads

    Student.get().then (students) ->
      $scope.students = students
]
