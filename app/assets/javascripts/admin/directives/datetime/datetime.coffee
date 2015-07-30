@directives.directive 'dateTime', [
  ->
    controller = [
        '$scope'
        ($scope) ->
            $scope.date = Date
    ]

    restrict: 'E'
    controller: controller
    replace: true
    templateUrl: "admin/directives/datetime/views/template.html"
]
