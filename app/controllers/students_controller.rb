class StudentsController < ApplicationController
    def index # index _action_
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(:grade).reverse
        # students = Student.order(grade: :desc)
        render json: students
    end

    
end
