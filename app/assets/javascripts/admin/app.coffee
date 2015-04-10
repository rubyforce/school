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

@admin = angular.module('admin', ['ui.router', 'rails', 'templates', 'admin.employees'])

admin.config [
    '$stateProvider', '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $urlRouterProvider.otherwise("/home");

        $stateProvider
            .state 'home',
                url: "/home"
                templateUrl: "admin/views/home/index.html"
]
