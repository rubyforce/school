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
      :expense_current_month => ExpenseReceipt.where("EXTRACT(MONTH FROM created_at) = ?", Date.today.month).sum(:amount),
      :salary_expenses_last_month => EmployeeSalaryReceipt.joins(:salary_receipt).where("EXTRACT(MONTH FROM month) = ?", Date.today.month.to_date-1).sum(:salary)
    }
  end
end
