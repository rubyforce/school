@fees_heads.controller 'CreateFeesCollectionController', [
    '$scope', 'Receipt', '$timeout', '$state', '$window', '$location', 'uuid4', '$http'
    ($scope, Receipt, $timeout, $state, $window, $location, uuid4, $http) ->
        $scope.dateOptions =
            changeMonth: true
            changeYear: true
            yearRange: "1950:-0"

        $scope.alert = false

        $http.get("admin/receipts/receipt_id")
            .success (response) ->
                $timeout ->
                    if response == null
                        $scope.receipt.number = "00001"
                    else
                        sum = response.id + 1
                        r = numeral(sum/10000).format('0.0000').replace(/\./,'')

                        $scope.receipt.number = r

        

        build = ->
            new Receipt()

        $scope.receipt = build()
        $scope.receipt.receiptsFeesHeads = []

        # Lets use separate collection to store fees heads, it will help us to control
        # items in ng-repeat.
        $scope.receiptsFeesHeads = []

        $scope.reset = ->
            $scope.receipt = build()

        # Lets watch on change $scope.student to merge fees_heads with existing
        # receipt.receiptsFeesHeads feesHeadId id because of uniqueness.
        $scope.$watch 'receipt', (time) ->
            return unless time?
            render()

        render = ->
            # Before making merges between student.studentsFeesHeads and fees_heads
            # we should clean up the previous populated collection.
            $scope.receiptsFeesHeads = []

            for f in $scope.fees_heads
                found = _.find $scope.receipt.receiptsFeesHeads, (o) -> o.feesHeadId is f.id

                # We extend our resource by properties hash for storing skipped on requests
                # data. Lets say we want to use extra `enabled` flag. We added as
                # object.properties.enabled = true / false and then on getting attributes
                # we will skip `properties` for passing only required data.
                if found?
                    # to make checkbox as checked
                    found.isNew = -> false

                    found.properties = {}
                    found.properties.enabled = true
                    found.properties.name = f.name
                    found.properties.amount = f.amount
                else
                    found =  {}
                    found.feesHeadId = f.id
                    found.receiptId = $scope.receipt.id

                    # to make checkbox as unchecked because of new record.
                    found.isNew = -> true

                    found.properties = {}
                    found.properties.enabled = false
                    found.properties.name = f.name
                    found.properties.amount = f.amount

                collection = _($scope.receiptsFeesHeads)
                unless collection.contains((o) -> o.feesHeadId is found.id)
                    $scope.receiptsFeesHeads.push(found)

        class NestedAttributes
            constructor: (@collection) ->
            get: ->
                # We are using @collection on rendering by ng-repeat on the form, we should
                # clone array because of possible removes later in code.
                collection = _.clone(@collection)

                for item in collection
                    if item.properties.enabled then item._destroy = 0 else item._destroy = 1
                    delete item.properties

                _(collection).remove (item) ->
                    # in case of we have new item and we want to destroy it, lets skip it
                    # on passing to the server request.
                    item._destroy is 1 && item.isNew()

                collection

        # TODO: create receipt and show page for printing.
        $scope.create = ->
            receiptsFeesHeadsAttributes = new NestedAttributes($scope.receiptsFeesHeads)
            receiptsFeesHeadsAttributes = receiptsFeesHeadsAttributes.get()

            $scope.receipt.receiptsFeesHeads = receiptsFeesHeadsAttributes
            $scope.receipt.studentId = $scope.student?.id

            new Receipt($scope.receipt).create().then (response) ->
                $scope.alert = true

                protocol = $location.protocol()
                host = $window.location.host
                domain = "#{protocol}://#{host}" # Example: http://example.com
                $window.open("#{domain}/admin/receipts/#{response.id}/print",'_blank')

                $timeout(render)

]
