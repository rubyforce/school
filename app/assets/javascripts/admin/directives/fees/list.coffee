@directives.directive 'feesList', [
    ->
      controller = [
        '$scope', '$timeout'
        ($scope, $timeout) ->
          $scope.bySelectorFees = (fees_head) ->
            if $scope.search?.standardId?
              debugger
              for fh in fees_heads
                return fh.standardId is parseInt($scope.search.standardId, 10)
              # return _.isEqual(student.standard.fees_heads_standards, $scope.search.standardId)
            true
      ]

      restrict: 'E'
      controller: controller
      replace: true
      templateUrl: "admin/directives/fees/views/template.html"
]
