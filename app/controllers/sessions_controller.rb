class SessionsController < ApplicationController

  def new
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"

  end

  def create
    user = User.find_by(:login => session_params[:login])
    if user.present?
      if user.password == session_params[:password]
        session[:login] = user.id
        session[:profile] = user.profile
        redirect_to root_url, notice: "Wazzzup!"
      else
        redirect_to root_url, notice: "Wrong Password."
      end
    else
      redirect_to root_url, notice: "Unknown user."
    end
  end

private
  def session_params
    params.require(:session).permit(:login, :password)
  end

end

