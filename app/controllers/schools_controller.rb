class SchoolsController < ApplicationController

  def index
    page  = (params[:page]  ||  0).to_i
    schools = School.limit(25).offset(page * 25)
    render locals: { schools: schools, page: page }
  end

  def show
    school = School.find(params[:id])
    render locals: { school: school }
  end


end
