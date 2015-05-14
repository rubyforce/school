@cash_managements.controller 'CreateExpenseController', [
  '$scope', 'ExpenseReceipt', '$location', '$window', '$timeout'
  ($scope, ExpenseReceipt, $location, $window, $timeout) ->
    $scope.alert = false

    render = ->
        # Before making merges between student.studentsFeesHeads and fees_heads
        # we should clean up the previous populated collection.
        $scope.employeeExpenseReceipts = []

        for f in $scope.employees
            found = _.find $scope.expense_receipt.employeeExpenseReceipts, (o) -> o.employeeId is f.id

            # We extend our resource by properties hash for storing skipped on requests
            # data. Lets say we want to use extra `enabled` flag. We added as
            # object.properties.enabled = true / false and then on getting attributes
            # we will skip `properties` for passing only required data.

            if found?
                found.isNew = -> false

                found.properties = {}
                found.properties.name = f.fullName()
            else
                found =  {}
                found.employeeId = f.id
                found.expense_made = ""
                found.payment_made = ""

                found.isNew = -> true

                found.properties = {}

            collection = _($scope.employeeExpenseReceipts)
            unless collection.contains((o) -> o.employeeId is found.id)
                $scope.employeeExpenseReceipts.push(found)

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

    build = ->
        new ExpenseReceipt()

    $scope.expense_receipt = build()
    $scope.expense_receipt.employeeExpenseReceipts = []

    $scope.$watchCollection 'employees', (collection) ->
        render()

    $scope.create = ->
      employeeExpenseReceiptsAttributes = new NestedAttributes($scope.employeeExpenseReceipts)
      employeeExpenseReceiptsAttributes = employeeExpenseReceiptsAttributes.get()

      $scope.expense_receipt.employeeExpenseReceipts = employeeExpenseReceiptsAttributes

      new ExpenseReceipt($scope.expense_receipt).create().then (response) ->
        $scope.alert = true

        $scope.expense_receipt = new ExpenseReceipt()

        protocol = $location.protocol()
        host = $window.location.host
        domain = "#{protocol}://#{host}" # Example: http://example.com
        $window.open("#{domain}/admin/expense_receipts/#{response.id}/print",'_blank')

        $timeout(render)
]
