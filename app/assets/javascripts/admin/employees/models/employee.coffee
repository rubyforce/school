# https://github.com/FineLinePrototyping/angularjs-rails-resource/issues/105
@employees.factory "Employee", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class Employee extends RailsResource
          @configure
              url: '/admin/employees'
              name: 'employee'
]