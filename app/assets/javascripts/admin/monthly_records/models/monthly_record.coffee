# https://github.com/FineLinePrototyping/angularjs-rails-resource/issues/105
@monthly_records.factory "MonthlyRecord", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class MonthlyRecord extends RailsResource
          @configure
              url: '/admin/monthly_records'
              name: 'monthly_record'
]
