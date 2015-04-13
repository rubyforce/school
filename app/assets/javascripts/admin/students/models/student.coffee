@students.factory "Student", [
    "$http", 'RailsResource'
    ($http, RailsResource) ->
        class Student extends RailsResource
          @configure
              url: '/admin/students'
              name: 'student'
]
