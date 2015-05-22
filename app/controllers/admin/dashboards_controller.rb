class Admin::DashboardsController < ApplicationController
  respond_to :json

  def index
    render :json => {
      :students_female => Student.where(:gender => "female"),
      :students_male => Student.where(:gender => "male")
    }
  end
end
