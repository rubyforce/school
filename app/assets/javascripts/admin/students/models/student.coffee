@students.factory "Student", [
    "$http", 'RailsResource', 'railsResourceFactory', 'railsSerializer'
    ($http, RailsResource, railsResourceFactory, railsSerializer) ->
        Student = railsResourceFactory
           url: '/admin/students'
           name: 'student'
           serializer: railsSerializer ->
               @nestedAttribute('students_fees_heads')
]
