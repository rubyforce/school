class Admin::DashboardsController < ApplicationController
  respond_to :json

  def index
    render :json => {
      :students => Student.all,
      :employees => Employee.all,
      :students_female => Student.where(:gender => "female"),
      :students_male => Student.where(:gender => "male"),
      :employees_govt_pay => Employee.joins(:paid_type).where(paid_types: { title: 'Government pay' }),
      :employees_section => Employee.joins(:section).where(sections: { title: 'Non-teaching' }),
      :expense => ExpenseReceipt.last.amount
      ## :cash_managements => CashManagement.where("MONTH(created_at) = :month", :month => Date.today.month)
    }
  end
end
