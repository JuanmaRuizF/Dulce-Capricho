class VistasServidorController < ApplicationController
  def login
  end

  def menu
  end

  def admin
      user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      # Valid login, set the session and redirect to protected destination
      session[:current_user_id] = user.id
      redirect_to '/index/admin'
    else 
      # Not a match, redirect to the login page 
      flash[:error] = "Usuario incorrecto"
      redirect_to "/login/admin"
    end
  end

  def destroy
      session[:current_user_id] = nil
      redirect_to "/login/admin", notice: "Sesión Cerrada!"
  end

  def index_admin
      @user = User.find_by(:id => session[:current_user_id])
      if !@user 
        redirect_to '/login/admin'
      end
  end
end
