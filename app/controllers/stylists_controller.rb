class StylistsController < ApplicationController

  # before_filter :load_salon

def index
	@stylists = @Stylist.all
	#@stylist = @Salon.find_by(params[:salon_id])
end

def new
  #@stylist = @Stylist.new
  @salon = Salon.find_by(:user_id => session[:login])
end

def create
	  @stylist = @Stylist.new(stylist_params) 
    @stylist.user_id = session[:login]
    @salon = Salon.find_by(:id => 'user_id')
    if @stylist.save
      redirect_to @salon_stylists, @salon
    end 
end

def edit
	@stylist = Stylist.find(params[:id])
end

def show
	@stylist = Stylist.find(params[:id])
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
  redirect_to "/salons"
end 

private
  def stylist_params
     params.require(:stylist).permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth, :image_url)
  end

# private
# def load_salon
#   @salon = Salon.find(params[:salon_id])
# end

end
