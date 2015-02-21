class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:classroom]
      @students = Student.where(:classroom => params[:classroom])
    else
      @students = Student.all.order(:last_name)
    end
    #respond_with(@students)
    create_email_string(@students)
   
  end

  def show
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end
  
  def create_email_string(string)
     @string = string.collect(&:email1).join(';')
     @string2 = @string + ";" + string.collect(&:email2).join(';')
  end
   
  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :parent1, :parent2, :email1, :email2, :email3, :email4, :classroom)
    end
end
