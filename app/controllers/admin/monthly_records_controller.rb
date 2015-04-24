class Admin::MonthlyRecordsController < ApplicationController
  respond_to :json

  def index
    @monthly_records = MonthlyRecord.all
    respond_with @monthly_records
  end

  def show
    @monthly_record = MonthlyRecord.find(params[:id])

    render :json => @monthly_record
  end

  def new
    @monthly_record = MonthlyRecord.new
  end

  def create
    @monthly_record = MonthlyRecord.new(params[:monthly_record])
    @monthly_record.save

    render :json => @monthly_record
  end

  def edit
    @monthly_record = MonthlyRecord.find(params[:id])
    render :json => @monthly_record
  end

  def update
    @monthly_record = MonthlyRecord.find(params[:id])
    @monthly_record.update_attributes(params[:monthly_record])
    render :json => @monthly_record
  end
end
