# https://github.com/FineLinePrototyping/angularjs-rails-resource/issues/105
@midday_managements.factory "MiddayManagement", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class MiddayManagement extends RailsResource
          @configure
              url: '/admin/midday_managements'
              name: 'midday_management'
]
