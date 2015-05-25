class Admin::DashboardsController < ApplicationController
  respond_to :json

  def index
    render :json => {
      :students_female => Student.where(:gender => "female"),
      :students_male => Student.where(:gender => "male"),
      :employees_govt_pay => Employee.joins(:paid_type).where(paid_types: { title: 'Government pay' }),
      :employees_section => Employee.joins(:section).where(sections: { title: 'Non-teaching' }),
      :cash_management => CashManagement.last.amount
    }
  end
end
