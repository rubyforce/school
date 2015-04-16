class SettlementsController < ApplicationController
  load_and_authorize_resource

  respond_to :json

  def index
    @settlements = Settlement.all
    respond_with @settlements
  end

  def show
    @settlement = Settlement.find(params[:id])

    render :json => @settlement
  end

  def new
    @settlement = Settlement.new
  end

  def create
    @settlement = Settlement.new(params[:settlement])
    @settlement.save

    render :json => @settlement
  end

  def edit
    @settlement = Settlement.find(params[:id])
    render :json => @settlement
  end

  def update
    @settlement = Settlement.find(params[:id])
    @settlement.update_attributes(params[:settlement])
    render :json => @settlement
  end

  def destroy
    @settlement = Settlement.find(params[:id])
    @settlement.destroy
    render :json => @settlement
  end
end
