class StylistsController < ApplicationController


def index
	@stylist = Stylist.all
	@salon = Salon.find_by(params[:salon_id])
end

def new
	@salon = Salon.find_by(:id => params[:salon_id])
end

def create
	@stylist = Stylist.new(stylist_params)
    @stylist.user_id = session[:login]
    @stylist.save
    redirect_to @stylist
end

def edit
	@stylist = Stylist.find(params[:id])
end

def show
	@stylist = Stylist.find(params[:id])
end

def update
	@stylist = Stylist.find(params[:id])
   if @stylist.update(params[:stylist].permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth))
     redirect_to @stylist
   else
     render 'edit'
   end
end

def destroy
	@stylist = Stylist.find(params[:id])
  @stylist.destroy
  redirect_to "/salons"
end 

private
  def stylist_params
     params.require(:stylist).permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth)
  end
end


