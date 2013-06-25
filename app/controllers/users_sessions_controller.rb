class UsersSessionsController < ApplicationController

  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    if @user = login(params[:username],params[:password])
      redirect_to(:users, message: 'Login exitoso')
    else
      flash.now[:alert] = 'No se pudo loguear correctamente'
      render action: new

    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
      logout
      redirect_to(:starting,message:'logged out')
  end

end
