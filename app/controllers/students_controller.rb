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
     create_email_string(@students)
  end
  
  def shakers
    @students = Student.where(:classroom => "Shakers")
     create_email_string(@students)
  end
  
  def creators
    @students = Student.where(:classroom => "Creators")
     create_email_string(@students)
  end
  
  def experimenters
    @students = Student.where(:classroom => "Experimenters")
     create_email_string(@students)
  end
  
  def investigators
    @students = Student.where(:classroom => "Investigators")
     create_email_string(@students)
  end
  
  def dreamers
    @students = Student.where(:classroom => "Dreamers")
     create_email_string(@students)
  end
  
  def inventors
     @students = Student.where(:classroom => "Inventors")
      create_email_string(@students)
  end
   
  def explorers
    @students = Student.where(:classroom => "Explorers")
     create_email_string(@students)
  end
  
  def explorers
    @students = Student.where(:classroom => "Explorers")
     create_email_string(@students)
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
