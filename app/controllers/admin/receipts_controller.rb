class Admin::ReceiptsController < ApplicationController
  respond_to :json

  def index
    @receipts = Receipt.all
    render :json => @receipts.as_json(:include => :receipts_fees_heads)
  end

  def show
    @receipt = Receipt.find(params[:id])
    render :json => @receipt.as_json(:include => :receipts_fees_heads)
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(params[:receipt])
    @receipt.save
    render :json => @receipt.as_json(:include => :receipts_fees_heads)
  end

  def edit
    @receipt = Receipt.find(params[:id])
    render :json => @receipt.as_json(:include => :receipts_fees_heads)
  end

  def update
    @receipt = Receipt.find(params[:id])
    @receipt.update_attributes(params[:receipt])
    render :json => @receipt.as_json(:include => :receipts_fees_heads)
  end

  def destroy
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    render :json => @receipt.as_json(:include => :receipts_fees_heads)
  end
end
