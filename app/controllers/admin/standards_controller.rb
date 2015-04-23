class Admin::StandardsController < ApplicationController
  respond_to :json

  def index
    @standards = Standard.all
    respond_with @standards
  end

  def show
    @standard = Standard.find(params[:id])

    render :json => @standard
  end

  def new
    @standard = Standard.new
  end

  def create
    @standard = Standard.new(params[:standard])
    @standard.save

    render :json => @standard
  end

  def edit
    @standard = Standard.find(params[:id])
    render :json => @standard
  end

  def update
    @standard = Standard.find(params[:id])
    @standard.update_attributes(params[:standard])
    render :json => @standard
  end
end
