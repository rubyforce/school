class Admin::SalariesController < ApplicationController
  respond_to :json

  def index
    @salaries = Salary.all
    respond_with @salaries
  end

  def show
    @salary = Salary.find(params[:id])
    render :json => @salary
  end

  def print
    @salary = Salary.find(params[:id])
    render :layout => 'print'
  end

  def new
    @salary = Salary.new
  end

  def create
    @salary = Salary.new(params[:salary])
    @salary.save
    render :json => @salary
  end

  def edit
    @salary = Salary.find(params[:id])
    render :json => @salary
  end

  def update
    @salary = Salary.find(params[:id])
    @salary.update_attributes(params[:salary])
    render :json => @salary
  end

  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    render :json => @salary
  end
end
