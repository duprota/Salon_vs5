#Vijay
class AppointmentsController < ApplicationController

def show
end

def new
 @client = Client.new
end

def create
 @client = Client.new(client_params)
 @client.user_id = session[:login]
 @client.save
 redirect_to @client
end

def index
  @user = User.find_by(:id => session[:login])
  @client = Client.find_by(:id => @user.id)
end

def edit
 @client = Client.find(params[:id])
end

def update
 @client = Client.find(params[:id])
 if @client.update(params[:client].permit(:client_name, :owner_name, :contact_name, :phone, :address, :email))
  redirect_to @client
 else
  render 'edit'
 end
end

def destroy
 @client = Client.find(params[:id])
 @client.destroy
 redirect_to "/clients"
end

private
 def client_params
   params.require(:client).permit(:first_name, :last_name, :user_id, :sex, :image_url, :phone, :email, :date_of_birth)
 end
end