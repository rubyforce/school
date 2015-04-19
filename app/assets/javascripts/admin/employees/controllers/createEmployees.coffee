@employees.controller 'CreateEmployeesController', [
  '$scope', 'Employee', '$modal', 'SharedObjects'
  ($scope, Employee, $modal, SharedObjects) ->
    DEFAULT_EMPLOYEE =
      entry_no: 'auto'

    build = -> _.clone(DEFAULT_EMPLOYEE)

    $scope.alert = false

    $scope.employee = build()

    $scope.create = ->
      new Employee($scope.employee).create().then (response) ->
        $scope.employees.push(new Employee(response))
        $scope.employee = build()
        $scope.alert = true

    $scope.paid_types = []
    $scope.sections = []
    $scope.pay_bands = []

    $scope.openPaidForm = (size) ->
      SharedObjects.modalWindow = $modal.open(
        templateUrl: 'admin/employees/views/modals/modal_paid_type.html'
        size: size
        controller: 'CreateEmployeesController')
      SharedObjects.modalWindow.result.then (index) ->
        $scope.title = index
        $scope.paid_types.push ($scope.title)

    $scope.addPaid = ->
      SharedObjects.modalWindow.close
        paid_type: $scope.title

    $scope.openSectionForm = (size) ->
      SharedObjects.modalWindow = $modal.open(
        templateUrl: 'admin/employees/views/modals/modal_section.html'
        size: size
        controller: 'CreateEmployeesController')
      SharedObjects.modalWindow.result.then (index) ->
        $scope.title = index
        $scope.sections.push ($scope.title)

    $scope.addSection = ->
      SharedObjects.modalWindow.close
        section: $scope.title

    $scope.openPayBandForm = (size) ->
      SharedObjects.modalWindow = $modal.open(
        templateUrl: 'admin/employees/views/modals/modal_pay_band.html'
        size: size
        controller: 'CreateEmployeesController')
      SharedObjects.modalWindow.result.then (index) ->
        $scope.title = index
        $scope.pay_bands.push ($scope.title)

    $scope.addPay = ->
      SharedObjects.modalWindow.close
        pay_band: $scope.title

    $scope.close = ->
      SharedObjects.modalWindow.dismiss 'cancel'
]
