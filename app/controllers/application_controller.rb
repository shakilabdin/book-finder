class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :current_user
  
    def current_user
      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end
    end
  
    def logged_in?
      current_user.id != nil
    end
  
    def require_logged_in
      return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
    
    def logout
      session[:user_id] = nil
      redirect_to(controller: 'welcome', action: 'home')
    end
    
end
