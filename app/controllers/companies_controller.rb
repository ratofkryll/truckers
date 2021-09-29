class CompaniesController < ApplicationController
  def new
  end

  def create
    @company = Company.create(params[:company])
  end
end
