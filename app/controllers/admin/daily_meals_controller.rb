class Admin::DailyMealsController < ApplicationController
  respond_to :json

  def index
    @daily_meals = DailyMeal.all
    respond_with @daily_meals
  end

  def show
    @daily_meal = DailyMeal.find(params[:id])

    render :json => @daily_meal
  end

  def new
    @daily_meal = DailyMeal.new
  end

  def create
    @daily_meal = DailyMeal.new(params[:daily_meal])
    @daily_meal.save

    render :json => @daily_meal
  end

  def edit
    @daily_meal = DailyMeal.find(params[:id])
    render :json => @daily_meal
  end

  def update
    @daily_meal = DailyMeal.find(params[:id])
    @daily_meal.update_attributes(params[:daily_meal])
    render :json => @daily_meal
  end
end
