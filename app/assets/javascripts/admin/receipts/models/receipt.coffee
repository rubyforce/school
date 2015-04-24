@receipts.factory "Receipt", [
  "$http", 'RailsResource'
  ($http, RailsResource) ->
    class Receipt extends RailsResource
      @configure
        url: '/admin/receipts'
        name: 'receipt'
]
