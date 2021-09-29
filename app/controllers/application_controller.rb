class ApplicationController < ActionController::Base
  helper_method :current_user

  rescue_from 'CanCan::AccessDenied' do |exception|
    render plain: "Forbidden", status: :forbidden
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
    session[:user_id] = nil
  end
end
