class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    student = Student.create(student_params)
    redirect_to student
  end

  def update
    student = Student.update(student_params)
    redirect_to student
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)

end
end
