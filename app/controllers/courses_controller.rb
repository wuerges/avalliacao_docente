class CoursesController < ApplicationController

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end
end
