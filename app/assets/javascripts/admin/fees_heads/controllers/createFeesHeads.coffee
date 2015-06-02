@fees_heads.controller 'CreateFeesHeadsController', [
  '$scope', 'FeesHead', '$timeout'
  ($scope, FeesHead, $timeout) ->
    $scope.alert = false

    $scope.fees_head = new FeesHead()
    $scope.fees_head.standardsFeesHeads = []

    $scope.standardsFeesHeads = []

    $scope.$watch 'fees_head', (time) ->
      return unless time?
      render()

    render = ->
      $scope.standardsFeesHeads = []

      for s in $scope.standards
        found = _.find $scope.fees_head.standardsFeesHeads, (o) -> o.standardId is s.id

        if found?
          found.isNew = -> false

          found.properties = {}
          found.properties.enabled = true
          found.properties.name = s.name
        else
          found =  {}
          found.standardId = s.id
          found.feesHeadId = $scope.fees_head.id

          found.isNew = -> true

          found.properties = {}
          found.properties.enabled = false
          found.properties.name = s.name

        collection = _($scope.standardsFeesHeads)
        unless collection.contains((o) -> o.standardId is found.id)
            $scope.standardsFeesHeads.push(found)

      class NestedAttributes
        constructor: (@collection) ->
        get: ->
          collection = _.clone(@collection)

          for item in collection
            if item.properties.enabled then item._destroy = 0 else item._destroy = 1
            delete item.properties

          _(collection).remove (item) ->
            item._destroy is 1 && item.isNew()

          collection

    $scope.select = (fees_head) ->
      $scope.fees_head = fees_head

    $scope.new = ->
      new FeesHead($scope.fees_head).create().then (response) ->
        $scope.fees_heads.push(new FeesHead(response))
        $scope.fees_head = new FeesHead()
        $scope.alert = true

    $scope.remove = (fees_head) ->
        fees_head.delete()
        _.remove($scope.fees_heads, fees_head)

    $scope.create = ->
      standardsFeesHeadsAttributes = new NestedAttributes($scope.standardsFeesHeads)
      standardsFeesHeadsAttributes = standardsFeesHeadsAttributes.get()

      $scope.fees_head.standardsFeesHeads = standardsFeesHeadsAttributes
      $scope.fees_head.update().then (response) ->
        $scope.alert = true
        $scope.fees_head.standardsFeesHeads = response.standardsFeesHeads
        $timeout(render)
      # $scope.fees_head.update().then (response) ->
      #   $scope.fees_head = build()
      #   $scope.alert = true
]
