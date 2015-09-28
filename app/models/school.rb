class School < ActiveRecord::Base
  has_many :teachers
  has_many :students, through: :teachers
  has_many :courses, through: :teachers
end
