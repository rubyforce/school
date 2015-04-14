@employees = angular.module('admin.employees', [])

employees.config [
    '$stateProvider', '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $stateProvider
            .state 'employees',
                url: "/employees"
                templateUrl: "admin/employees/views/index.html"
            .state 'employees.new',
                url: "/new"
                templateUrl: "admin/employees/views/new.html"
            .state 'employees.edit',
                url: "/edit"
                templateUrl: "admin/employees/views/edit.html"
            .state 'employees.delete',
                url: "/delete"
                templateUrl: "admin/employees/views/delete.html"
]

employees.filter 'offset', ->
  (input, start) ->
    start = parseInt(start, 10)
    input.slice start

@students = angular.module('admin.students', [])

students.config [
    '$stateProvider', '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $stateProvider
            .state 'students',
                url: "/students"
                templateUrl: "admin/students/views/index.html"
            .state 'students.new',
                url: "/new"
                templateUrl: "admin/students/views/new.html"
            .state 'students.edit',
                url: "/edit"
                templateUrl: "admin/students/views/edit.html"
            .state 'students.delete',
                url: "/delete"
                templateUrl: "admin/students/views/delete.html"
]

@admin = angular.module('admin', ['ui.router', 'rails', 'templates', 'admin.employees', 'admin.students', 'ui.date', 'ui.bootstrap'])

admin.config [
    '$stateProvider', '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $urlRouterProvider.otherwise("/home");

        $stateProvider
            .state 'home',
                url: "/home"
                templateUrl: "admin/views/home/index.html"
]
