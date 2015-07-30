@directives.directive 'dateOptions', [
  '$compile'
  ($compile) ->
    restrict: 'A'
    link: (scope, element, attributes) ->
      element.attr('ui-date', 'dateOptions')
      element.attr('ui-date-format', "dd/mm/yy")
      element.removeAttr('date-options')

      scope.dateOptions =
        changeMonth: true
        changeYear: true
        yearRange: "1950:-0"

      $compile(element)(scope);
]
