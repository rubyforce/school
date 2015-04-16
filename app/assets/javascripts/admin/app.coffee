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

@cash_managements = angular.module('admin.cash_managements', [])

cash_managements.config [
    '$stateProvider', '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $stateProvider
            .state 'cash_managements',
                url: "/cash_managements"
                templateUrl: "admin/cash_managements/views/index.html"
            .state 'cash_managements.settlements',
                url: "/settlements/new"
                templateUrl: "admin/cash_managements/views/settlements/new.html"
            .state 'cash_managements.expense',
                url: "/expense_voucher/new"
                templateUrl: "admin/cash_managements/views/expense_voucher/new.html"
            .state 'cash_managements.salary',
                url: "/salary/new"
                templateUrl: "admin/cash_managements/views/salary/new.html"
]

@admin = angular.module('admin', ['ui.router', 'rails', 'templates', 'admin.employees', 'admin.students', 'admin.cash_managements', 'ui.date', 'ui.bootstrap'])

admin.config [
    '$stateProvider', '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $urlRouterProvider.otherwise("/home");

        $stateProvider
            .state 'home',
                url: "/home"
                templateUrl: "admin/views/home/index.html"
]

