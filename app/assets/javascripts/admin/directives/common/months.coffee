@directives.directive 'months', [
    ->
        link = (scope) ->
            scope.months = [
                "January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December",
            ]

        link: link
        restrict: 'E'
        require: '^ngModel'
        replace: true
        scope:
            title: '@'
            ngModel: '='
        template: """
          <div class="form-group">
            <div class="col-sm-4">
              <label class="control-label">{{ title }}</label>
            </div>
            <div class="col-sm-6">
              <select cng-model='ngModel' lass="form-control">
                <option ng-repeat="month in months">{{month}}</option>
              </select>
            </div>
          </div>
        """
]