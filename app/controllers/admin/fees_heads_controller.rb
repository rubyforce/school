class Admin::FeesHeadsController < ApplicationController
  respond_to :json

  def index
    @fees_heads = FeesHead.all
    respond_with @fees_heads
  end

  def show
    @fees_head = FeesHead.find(params[:id])

    render :json => @fees_head
  end

  def new
    @fees_head = FeesHead.new
  end

  def create
    @fees_head = FeesHead.new(params[:fees_head])
    @fees_head.save

    render :json => @fees_head
  end

  def edit
    @fees_head = FeesHead.find(params[:id])
    render :json => @fees_head
  end

  def update
    @fees_head = FeesHead.find(params[:id])
    @fees_head.update_attributes(params[:fees_head])
    render :json => @fees_head
  end

  def destroy
    @fees_head = FeesHead.find(params[:id])
    @fees_head.destroy
    render :json => @fees_head
  end
end
