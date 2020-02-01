class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def activate
    student = Student.find(params[:id])
    student.active = !student.active
    student.save
    redirect_to student_path(student.id)
  end
  
  def update
    # byebug
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_path(student.id)
  end

  private

  def student_params
    params.require(:student).permit(:active)
  end

end