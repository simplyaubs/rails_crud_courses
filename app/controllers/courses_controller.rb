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

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update_attributes!(course_params)

    redirect_to courses_path
  end

  def destroy
    @course = Course.find(params[:id]).delete

    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:name, :level)
  end
end