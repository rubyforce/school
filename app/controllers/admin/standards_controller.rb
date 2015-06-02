class Admin::StandardsController < ApplicationController
  respond_to :json

  def index
    @standards = Standard.all
    render :json => @standards.as_json(:include => :standards_fees_heads)
  end

  def show
    @standard = Standard.find(params[:id])

    render :json => @standard.as_json(:include => :standards_fees_heads)
  end

  def new
    @standard = Standard.new
  end

  def create
    @standard = Standard.new(attributes)
    if params[:standard][:standards_fees_heads_attributes].blank?
      params[:standard].delete(:standards_fees_heads_attributes)
    end
    @standard.save

    render :json => @standard.as_json(:include => :standards_fees_heads)
  end

  def edit
    @standard = Standard.find(params[:id])
    render :json => @standard.as_json(:include => :standards_fees_heads)
  end

  def update
    @standard = Standard.find(params[:id])
    if params[:standard][:standards_fees_heads_attributes].blank?
      params[:standard].delete(:standards_fees_heads_attributes)
    end
    @standard.update_attributes(attributes)
    render :json => @standard.as_json(:include => :standards_fees_heads)
  end
end
