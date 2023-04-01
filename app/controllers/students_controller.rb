class StudentsController < ApplicationController

  layout 'admin'

  before_action :set_student, only: %i[show edit update destroy]
  helper_method :formatted_date

  def index
    @students= Student.all
  end

  def new
    @student= Student.new
  end

  def create
    @student = Student.new(student_params)
     if @student.save
      redirect_to students_path, notice: 'Student has been created succesfully'
     else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path,notice: 'Student has been updated succesfully'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, notice: 'Student has been deleted succesfully'
  end

  private

  def student_params
    params.permit(:first_name, :last_name, :email, :adress, :date_of_birth, :contact,:profile_image)
  end

  def set_student
    @student = Student.find(params[:id])
    #select * from students where id=? params[:id]
  end

  def formatted_date(date)
    date.strftime("%d-%m-%Y") if date.present?
  end

end



