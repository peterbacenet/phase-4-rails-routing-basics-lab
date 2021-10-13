class StudentsController < ApplicationController
    def index
        render json: Student.all
    end
    def grades
        #decsending 
        sorted_grades = Student.all.order(:grade => :desc)
        render json: sorted_grades
    end
    def highest_grade
        sorted_grades = Student.all.order(:grade => :desc)
        render json: sorted_grades.first
    end
end
