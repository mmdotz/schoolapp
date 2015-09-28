class TeachersController < ApplicationController
  def index
    teachers = Teacher.all
    render html :locals { locals :teachers }
  end

  def show
    teacher = Teacher.find(params[:id])
    render html :locals { teacher :teacher }
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

end
