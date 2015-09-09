@students.controller 'DeleteStudentsController', [
  '$scope', 'Student', '$timeout'
  ($scope, Student, $timeout) ->
    $scope.alert = false
    $scope.clicked = true

    makeTableSelectable = ->
      $timeout ->
        table = $('table')
        table.tableselect
          multiple: false
          activeClass: 'warning'
          onSelectionChanged: (element) ->
            return unless element?
            user = $scope.students[element.data('index')]
            $scope.$apply ->
              $scope.formAction(user)

    $scope.$watch 'currentPage', makeTableSelectable

    $scope.formAction = (user) ->
      $scope.currentUser = user
      $scope.clicked = false

    $scope.remove = ->
      $scope.currentUser.delete().then (student) ->
        $scope.alert = true

      index = _.indexOf($scope.students, $scope.currentUser)
      $scope.students.splice(index, 1)

    $scope.itemsPerPage = 5
    $scope.currentPage = 1

    $scope.pageCount = ->
      Math.ceil($scope.students.length / $scope.itemsPerPage)
]
