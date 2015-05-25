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
      :expense => ExpenseReceipt.last.amount,
      :expenses => ExpenseReceipt.where("EXTRACT(MONTH FROM created_at) = ?", Date.today.month).sum(:amount)
    }
  end
end
