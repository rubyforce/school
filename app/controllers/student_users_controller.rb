class StudentUsersController < ApplicationController
  def index
    @student_users = StudentUser.all
  end

  def show
    @student_user = StudentUser.find(params[:id])
  end

  def new
    @student_user = StudentUser.new
  end

  def create
    @student_user = StudentUser.new(params[:student_user])

    if @student_user.save
      redirect_to student_users_path
    else
      render :new
    end
  end

  def edit
    @student_user = StudentUser.find(params[:id])
  end

  def update
    @student_user = StudentUser.find(params[:id])

    if @student_user.update_attributes(params[:student_user])
      redirect_to student_users_path
    else
      render :edit
    end
  end

  def destroy
    @student_user = StudentUser.find(params[:id])
    @student_user.destroy

    redirect_to student_users_path
  end
end
