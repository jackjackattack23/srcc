class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @students = Student.all
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
  
  def movers
    @students = Student.where(:classroom => "Movers")
    create_email_string(@students)
  end
  
  def wigglers
    @students = Student.where(:classroom => "Movers")
  end
  
  def shakers
    @students = Student.where(:classroom => "Shakers")
  end
  
  def creators
    @students = Student.where(:classroom => "Creators")
  end
  
  def experimenters
    @students = Student.where(:classroom => "Experimenters")
  end
  
  def investigators
    @students = Student.where(:classroom => "Investigators")
  end
  
  def dreamers
    @students = Student.where(:classroom => "Dreamers")
  end
  
  def inventors
     @students = Student.where(:classroom => "Inventors")
  end
   
  def explorers
    @students = Student.where(:classroom => "Explorers")
  end
  
  def explorers
    @students = Student.where(:classroom => "Explorers")
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
      params.require(:student).permit(:name, :parent1, :parent2, :email1, :email2, :email3, :email4, :classroom)
    end
end
