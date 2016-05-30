module SessionsHelper
  def login
    session[:user_id] = @user.id
  end

  def logout
    session.delete(:user_id)
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    session.key?(:user_id)
  end
end
