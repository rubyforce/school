class Admin::DashboardsController < ApplicationController
  respond_to :json

  def index
    @dashboards = Dashboard.all
    @dashboard = @dashboards

    render :json => @dashboards.as_json(
      :include => [
        :student => {
          :students_female => Student.find(:all, :conditions =>"gender=female"),
          :students_male => Student.find(:all, :conditions =>"gender=male")
        }
      ]
    )
  end
end
