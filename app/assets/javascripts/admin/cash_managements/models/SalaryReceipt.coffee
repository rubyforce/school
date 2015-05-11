# https://github.com/FineLinePrototyping/angularjs-rails-resource/issues/105
@cash_managements.factory "SalaryReceipt", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class SalaryReceipt extends RailsResource
          @configure
              url: '/admin/salary_receipts'
              name: 'salary_receipt'
]
