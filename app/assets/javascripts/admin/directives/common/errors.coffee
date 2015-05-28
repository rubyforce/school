@directives.directive 'errors', [
    ->
        link = (scope) ->

        link: link
        restrict: 'E'
        replace: true
        scope:
            errors: '='
        template: """
          <div ng-repeat="error in errors" style="color:maroon" role="alert">
            <div class='required'>{{ error }}</div>
          </div>
        """
]
