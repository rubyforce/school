class Admin::SalaryReceiptsController < ApplicationController
  respond_to :json

  def index
    @salary_receipts = SalaryReceipt.all
    render :json => @salary_receipts.as_json(:include => :employee_salary_receipts)
  end

  def show
    @salary_receipt = SalaryReceipt.find(params[:id])
    render :json => @salary_receipt.as_json(:include => :employee_salary_receipts)
  end

  def print
    @salary_receipt = SalaryReceipt.find(params[:id])
    render :layout => 'print'
  end

  def new
    @salary_receipt = SalaryReceipt.new
  end

  def create
    @salary_receipt = SalaryReceipt.new(params[:salary_receipt])
    @salary_receipt.save
    render :json => @salary_receipt.as_json(:include => :employee_salary_receipts)
  end

  def edit
    @salary_receipt = SalaryReceipt.find(params[:id])
    render :json => @salary_receipt.as_json(:include => :employee_salary_receipts)
  end

  def update
    @salary_receipt = SalaryReceipt.find(params[:id])
    @salary_receipt.update_attributes(params[:salary_receipt])
    render :json => @salary_receipt.as_json(:include => :employee_salary_receipts)
  end

  def destroy
    @salary_receipt = SalaryReceipt.find(params[:id])
    @salary_receipt.destroy
    render :json => @salary_receipt.as_json(:include => :employee_salary_receipts)
  end

  def paid_salary
    date = Date.parse(params[:date])

    collection = SalaryReceipt
    .where('month BETWEEN ? AND ?', date.beginning_of_month, date.end_of_month)
    .includes(:employee_salary_receipts)
    .map(&:employee_salary_receipts)
    .flatten
    render :json => collection
  end
end
