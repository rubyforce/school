class Admin::StudentsController < ApplicationController
  respond_to :json

  def index
    @students = Student.all
    render :json => @students.as_json(:include => :students_fees_heads)
  end

  def show
    @student = Student.find(params[:id])

    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    @student.save

    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def edit
    @student = Student.find(params[:id])
    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(params[:student])
    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    render :json => @student.as_json(:include => :students_fees_heads)
  end
end
