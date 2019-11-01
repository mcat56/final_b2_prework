# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    sal = Student.create(name: 'Sal')
    meg = Student.create(name: 'Meg')
    mike = Student.create(name: 'Mike')
    ian = Student.create(name: 'Ian')

    bio = Course.create!(name: 'Biology')
    calc = Course.create!(name: 'Calculus')
    lit = Course.create!(name: 'Literature')
