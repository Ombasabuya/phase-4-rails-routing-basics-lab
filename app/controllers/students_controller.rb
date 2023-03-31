class StudentsController < ApplicationController
  def index
    # ...
  end
  
  def grades
    @students = Student.order(grade: :desc)
    grades = @students.pluck(:grade)
    render json: { grades: grades }
  end
  
  def highest_grade
    @student = Student.order(grade: :desc).first
    render json: @student.as_json
  end
end
