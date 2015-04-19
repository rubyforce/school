class Admin::StudentsController < ApplicationController
  respond_to :json

  def index
    @students = Student.all
    respond_with @students
  end

  def show
    @student = Student.find(params[:id])

    render :json => @student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    @student.save

    render :json => @student
  end

  def edit
    @student = Student.find(params[:id])
    render :json => @student
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(params[:student])
    render :json => @student
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    render :json => @student
  end
end
