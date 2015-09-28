class Teacher < ActiveRecord::Base
  belongs_to :school, :dependent => :destroy
  has_many :students
  has_many :courses
end
