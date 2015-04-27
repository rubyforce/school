class Admin::ReceiptsController < ApplicationController
  respond_to :json

  def index
    @receipts = Receipts.all
    respond_with @receipts
  end

  def show
    @receipt = Receipts.find(params[:id])

    render :json => @receipt
  end

  def new
    @receipt = Receipts.new
  end

  def create
    @receipt = Receipts.new(params[:receipt])
    @receipt.save

    render :json => @receipt
  end

  def edit
    @receipt = Receipts.find(params[:id])
    render :json => @receipt
  end

  def update
    @receipt = Receipts.find(params[:id])
    @receipt.update_attributes(params[:receipt])
    render :json => @receipt
  end

  def destroy
    @receipt = Receipts.find(params[:id])
    @receipt.destroy
    render :json => @receipt
  end
end
