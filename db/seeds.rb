# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

40.times do
  school = School.create({ name: Faker::University.name })

  [1, 2, 3, 4].sample.times do
    teacher = Teacher.create({
      name:      Faker::Name.name,
      school_id: school.id
    })
    [7, 8, 9, 10].sample.times do
      Student.create({
        name:    Faker::Name.name,
        teacher_id: teacher.id
      })
    end
    [1, 2, 3].sample.times do
      Course.create({
        name:   Faker::Company.buzzword,
        teacher_id: teacher.id
      })
    end
  end
end
