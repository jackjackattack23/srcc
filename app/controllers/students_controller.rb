class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @students = Student.all
    #respond_with(@students)
    @string = @students.collect(&:email1).join(';')
    @string2 = @string + @students.collect(&:email2).join(';')
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
  
  def movers
    @students = Student.where(:classroom => "Movers")
    @string = @students.collect(&:email1).join(';')
    @string2 = @string + ";" + @students.collect(&:email2).join(';')
  end
  def wigglers
    @students = Student.where(:classroom => "Movers")
  end
   
  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :parent1, :parent2, :email1, :email2, :email3, :email4, :classroom)
    end
end
