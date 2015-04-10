class Admin::EmployeesController < ApplicationController
  load_and_authorize_resource

  respond_to :json

  def index
    @employees = Employee.all
    respond_with @employees
  end

  def show
    @employee = Employee.find(params[:id])
    respond_with @employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])
    @employee.save

    respond_with @employee
  end

  def edit
    @employee = Employee.find(params[:id])
    respond_with @employee
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes(params[:employee])

    respond_with @employee
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_with @employee
  end
end
