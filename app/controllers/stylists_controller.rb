class StylistsController < ApplicationController

def index
	@stylists = @Stylist.all
	#@stylist = @Salon.find_by(params[:salon_id])
end

def new
  @stylist = Stylist.new
  @salon = Salon.find_by(params[:id])
end

def create
    @stylist = Stylist.new(stylist_params) 
    @stylist.salon_id = session[:login]
    @salon = Salon.find_by(:id => 'user_id')
    @stylist.save
    redirect_to @salon_stylists
end

def edit
	@stylist = Stylist.find(params[:id])
end

def show
	@stylist = Stylist.where(:salon_id => params[:id])
  @salon = Salon.find_by(:id => params[:id])
end

def update
	@stylist = Stylist.find(params[:id])
   if @stylist.update(params[:stylist].permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth, :image_url))
     redirect_to @stylist
   else
     render 'edit'
   end
end

def destroy
	@stylist = Stylist.find(params[:id])
  @stylist.destroy
  redirect_to @salons
end 

private
  def stylist_params
     params.require(:stylist).permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth, :image_url)
  end
end