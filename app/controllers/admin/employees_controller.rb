class Admin::EmployeesController < ApplicationController
  respond_to :json

  def index
    @employees = Employee.all
    respond_with @employees
  end

  def show
    @employee = Employee.find(params[:id])

    render :json => @employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])

    if @employee.save
      render :json => @employee
    else
      render :status => 422, :json => { errors: @employee.errors.full_messages }
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    render :json => @employee
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update_attributes(params[:employee])
      render :json => @employee
    else
      render :status => 422, :json => { errors: @employee.errors.full_messages }
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render :json => @employee
  end
end
