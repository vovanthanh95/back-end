class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by id: params[:id]
  end

  def destroy
    @delete = Employee.find_by id: params[:id]
    @delete.destroy
  end
  def new
    @employee = Employee.new
  end

  def create
    a = Employee.new(params.require("employee").permit(:name, :email, :password, :password_confirm))
     if a.save
    # Employee.create name: params["employee"]["name"], email: params["employee"]["email"]
    redirect_to employees_path
  else render :new
  end
  end

end
