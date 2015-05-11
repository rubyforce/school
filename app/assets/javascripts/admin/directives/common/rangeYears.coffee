@directives.directive 'rangeYears', [
    ->
        compile = (element) ->
            element.find('.from').datepicker
                defaultDate: "-0y"
                changeMonth: true
                changeYear: true
                yearRange: "1990:+5"
                onClose: ( selectedDate ) ->
                    element.find('.to').datepicker( "option", "minDate", selectedDate )

            element.find('.to').datepicker
                defaultDate: "+1y"
                changeMonth: true
                changeYear: true
                yearRange: "1990:+5"
                onClose: ( selectedDate ) ->
                    element.find('.from').datepicker( "option", "minDate", selectedDate )

        compile: compile
        restrict: 'E'
        replace: true
        scope:
            title: '@'
            from: '='
            to: '='
        template: """
          <div class="form-group">
            <div class="col-sm-4">
              <label class="control-label">{{ title }}</label>
            </div>

            <div class="col-sm-6">
              <div class="form-inline">
                  <div class="form-group col-sm-12">
                      <div class="col-sm-3">
                          <label class="control-label">From:</label>
                      </div>
                      <div class="col-sm-9">
                          <input ng-model='from' type='text' class="form-control from input-sm"></input>
                      </div>
                  </div>
                  <div class="form-group col-sm-12">
                      <div class="col-sm-3">
                          <label class="control-label">To:</label>
                      </div>
                      <div class="col-sm-9">
                          <input ng-model='to' type='text' class="form-control to input-sm"></input>
                      </div>
                  </div>
              </div>
            </div>
          </div>
        """
]