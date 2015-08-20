class Admin::DashboardsController < ApplicationController
  respond_to :json

  def index
    paid = Receipt.all.sum(:total)
    concession = StudentsFeesHead.sum(:concession)

    students = Student.all.group_by(&:standard_id)
    expected = Standard.all.inject(0) do |summary, standard|
      summary += standard.fees_heads.sum(:amount) * students[standard.id].to_a.size
      summary
    end

    render :json => {
      :students => Student.all,
      :employees => Employee.all,
      :students_female_count => Student.where(:gender => "female").count,
      :students_male_count => Student.where(:gender => "male").count,
      :employees_govt_pay => Employee.joins(:paid_type).where(paid_types: { title: 'Government pay' }),
      :employees_section => Employee.joins(:section).where(sections: { title: 'Non-teaching' }),

      :expense => ExpenseReceipt.where("EXTRACT(DAY FROM created_at) = ?", Date.today.day).sum(:amount),
      :expense_current_month => ExpenseReceipt.where("EXTRACT(MONTH FROM created_at) = ?", Date.today.month).sum(:amount),
      :salary_expenses_last_month => EmployeeSalaryReceipt.joins(:salary_receipt).where("EXTRACT(MONTH FROM month) = ?", Date.today.month-1).sum(:salary),
      :yesterday_closing_balance => CashManagement.where("EXTRACT(DAY FROM created_at) = ?", Date.today.day-1).sum(:cash_closing),

      :today_fees_collection => Receipt.where("EXTRACT(DAY FROM created_at) = ?", Date.today.day).where(:status => nil).where(:cheque_status => nil).sum(:total).round(2),
      :current_month_fees_collection => Receipt.where("EXTRACT(MONTH FROM created_at) = ?", Date.today.month).where(:status => nil).where(:cheque_status => nil).sum(:total).round(2),
      :last_month_fees_collection => Receipt.where("EXTRACT(MONTH FROM created_at) = ?", Date.today.month-1).where(:status => nil).where(:cheque_status => nil).sum(:total).round(2),
      :outstanding_fees => (expected - paid - concession).round(2)
    }
  end
end
