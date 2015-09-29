class CoursesController < ApplicationController

  def index
    page  = (params[:page]  ||  0).to_i
    courses = Course.limit(25).offset(page * 25)
    render locals: { courses: courses, page: page }
  end

  def show
  end

end
