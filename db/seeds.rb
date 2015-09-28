# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

40.times do
  school = School.create({
    name:   Faker::University.name
    })
  teacher = Teacher.create({
   name:    Faker::Name.name,
   school_id: school.id
   })
  student = Student.create({
   name:    Faker::Name.name,
   teacher_id: teacher.id
    })
  course = Course.create({
    name:   Faker::Company.buzzword,
    teacher_id: teacher.id
    })

end
