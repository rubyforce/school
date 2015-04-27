class Admin::ReceiptsController < ApplicationController
  respond_to :json

  def index
    @receipts = Receipt.all
    respond_with @receipts
  end

  def show
    @receipt = Receipt.find(params[:id])
    render :json => @receipt
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(params[:receipt])
    @receipt.save
    render :json => @receipt
  end

  def edit
    @receipt = Receipt.find(params[:id])
    render :json => @receipt
  end

  def update
    @receipt = Receipt.find(params[:id])
    @receipt.update_attributes(params[:receipt])
    render :json => @receipt
  end

  def destroy
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    render :json => @receipt
  end
end
