module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||=User.find_by_id(session[:user_id])
  end

  def logged_in?
    flash[:error] = "You must log in to access this portion of the site"
    redirect_to new_user_url
  end

  def logout
    @current_user = session[:user_id] = nil
  end

end
