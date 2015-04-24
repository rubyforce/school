@fees_heads.factory "FeesHead", [
  "$http", 'RailsResource'
  ($http, RailsResource) ->
    class FeesHead extends RailsResource
      @configure
        url: '/admin/fees_heads'
        name: 'fees_head'
]
