class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(params[:employee])

		if @employee.save
			redirect_to employees_path
		else
			render :new
		end
	end

	def edit
		@employee = Employee.find(params[:employee])
	end

	def update
		@employee = Employee.find(params[:employee])

		if @employee.update_attributes(params[:employee])
			redirect_to employees_path
		else
			render :edit
		end
	end

	def destroy
		@employee = Employee.find(params[:employee])
		@employee.destroy

		redirect_to employees_path
	end
end
