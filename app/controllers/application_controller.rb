class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user 

private 

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end



  	def authenticate
    	authenticate_or_request_with_http_basic do |user_name, password|
     	user_name == 'romainb' && password == '34ty90wx'
    end

 end
end