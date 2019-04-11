class EmployeesController < ApplicationController
  def destroy
    @employee=Employee.find(params[:id])
    @employee.destroy
    redirect_to company_path(company)
  end
end
