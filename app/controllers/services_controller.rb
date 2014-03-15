class ServicesController < ApplicationController

def show
  @service = Service.find(params[:id])
end

# def new
#   @service = Service.new
# end


# def index
#   @service = Service.new
# end


  # def create
  #   @salon = Salon.find(params[:salon_id])
  #   @service = @salon.services.create(params[:service].permit(:salon_id, :category_id, :service_name, :description))
  #   redirect_to salon_path(@salon)
  # end

# def create
#   @service = Service.new(params[:service].permit(permit(:salon_id, :category_id, :service_name, :description))
#   if @service.save
#     redirect_to @service
#   else
#     render 'new'
#   end

end
