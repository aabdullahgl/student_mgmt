# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

=begin
student = Student.create(
  first_name: "Abdullah",
  last_name: "Gül",
  email: "abdullahgul13@outlook.com",
  adress: "Turkey"
)

Student.all.each do |student|
  student.blogs.create(title: "Dummy blog for student #{student.id} ", content: "Custom content pending" )
end


=end

student = Student.create(email:"abdullahgul13@outlook.com", date_of_birth: "fff")

puts "#{student.errors.messages}"

