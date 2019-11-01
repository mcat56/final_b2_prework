class CoursesController < ApplicationController

  def show
    @course = Course.find(params[:id])
    @student_courses = @course.student_courses.order(grade: :desc)
  end

end
