class UsersController < ApplicationController

  def new
  @user = User.new
  end

 def create
  @user = User.new(user_params)
  @user.save
      if @user.profile == "salon"
        redirect_to new_salon_path notice: "Please tell us more about your salon"
      else
        redirect_to root_url, notice: "Welcome dear client"
      end
  end

 # @product = Item.find_by(:id => params[:product_id])

  def show
  @user = User.find_by(:id => session[:login])
  if @user.profile = "Client"
  redirect_to :controller=>'clients',:action=>'edit',:user_id => params[:id]
  elsif @user.profile == "Salon"
  redirect_to :controller=>'salons',:action=>'edit',:user_id => params[:id]
  end
   
    # @client = Client.find_by(:id => login[:session])  
    #   @user = User.find_by(:id => params[:user_id])
      # if @user.id != session[:user_id]
      #   redirect_to root_url, notice: "Nice try"
      # end
  end

  def index
  @user = User.all
end

# def show
#   @user=User.find(params[:id])
#   @user_profile = Client.find_by(:user_id => @user.id)
# end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if @users.update(params[:user].permit(:login, :password, :profile))
    redirect_to @user

  else
    render 'edit'
    # Render edit action?
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to "/users"
  # where does it redirect to?
end

private
  def user_params
    params.require(:user).permit(:login, :password, :profile)
  end

end
