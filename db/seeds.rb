# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# create a student 

student = Student.create(
    first_name: "Natasha",
    last_name: "Chirombe",
    email: "tascha@gmail.com",
    address: "mehmet sah sk Cyprus",
    program: "Software Engineering"
)

3.times do |i|
    puts "Creating Students dummy data"

    student = Student.create(
        first_name: "Student #{i+1}",
        last_name: "Lname #{i+1}",
        email: "student#{i+1}@microverse.com",
        address: "Student#{i+1}address",
        program: "Student#{i+1}Program"
    )
end