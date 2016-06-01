class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      login
      #session[:user_id] = @user.id
      redirect_to offers_path
    else 
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to login_path
  end

end
