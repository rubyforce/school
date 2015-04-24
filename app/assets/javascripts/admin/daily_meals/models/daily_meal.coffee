# https://github.com/FineLinePrototyping/angularjs-rails-resource/issues/105
@daily_meals.factory "DailyMeal", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class DailyMeal extends RailsResource
          @configure
              url: '/admin/daily_meals'
              name: 'daily_meal'
]
