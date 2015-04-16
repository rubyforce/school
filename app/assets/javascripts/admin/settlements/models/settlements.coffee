# https://github.com/FineLinePrototyping/angularjs-rails-resource/issues/105
@settlements.factory "Settlement", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class Settlement extends RailsResource
          @configure
              url: '/admin/settlements'
              name: 'settlement'
]