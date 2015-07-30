@directives.directive 'dateOptions', [
  '$compile'
  ($compile) ->
    restrict: 'A'
    require: 'ngModel'
    link: (scope, element, attributes, ngModel) ->
      ngModel.$formatters.push (value) ->
        date = new Date

        try
          date = $.datepicker.parseDate("dd/mm/yy", value)
        catch
          date = $.datepicker.parseDate("yy-mm-dd", value)

        $.datepicker.formatDate("dd/mm/yy", date)

      ngModel.$parsers.push (value) ->
        value

      element.attr('ui-date', 'dateOptions')
      element.attr('ui-date-format', "dd/mm/yy")
      element.removeAttr('date-options')

      scope.dateOptions =
        changeMonth: true
        changeYear: true
        yearRange: "1950:-0"

      $compile(element)(scope);
]
