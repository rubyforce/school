@base = angular.module('base', ['ng-rails-csrf', 'rails', 'ui'])

$(document).on 'ready page:change ajax-ready', ->
  angular.bootstrap(document, ['base'])

