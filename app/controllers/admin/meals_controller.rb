class MealsController < ApplicationController
  respond_to :json

  def index
    @meals = Meal.all
    respond_with @meals
  end

  def show
    @meal = Meal.find(params[:id])

    render :json => @meal
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(params[:meal])
    @meal.save

    render :json => @meal
  end

  def edit
    @meal = Meal.find(params[:id])
    render :json => @meal
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update_attributes(params[:meal])
    render :json => @meal
  end
end
