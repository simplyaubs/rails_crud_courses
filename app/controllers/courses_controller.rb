class CoursesController < ApplicationController

  def index
    @course = Course.new
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save

      redirect_to courses_path
    else
      render :index
    end
  end

  private
  def course_params
    params.require(:course).permit(:name, :level)
  end
end