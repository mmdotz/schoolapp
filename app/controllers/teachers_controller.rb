class TeachersController < ApplicationController
  def index
    teachers = Teacher.new
    page  = (params[:page]  ||  0).to_i= Wit.limit(10).offset(page * 10)
    render locals: { teachers: teachers }
  end

  def show
    teacher = Teacher.find(params[:id])
    render locals: { teacher: teacher }
  end



end
