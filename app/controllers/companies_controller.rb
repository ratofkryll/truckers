class CompaniesController < ApplicationController
  def create
    @company = Company.create(params[:company])
  end
end
