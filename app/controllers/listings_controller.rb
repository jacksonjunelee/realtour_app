class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def new
    @listing = Listing.new
    render json: @listing
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      render json: @listing
    else
      render nothing: true
    end
  end

  def edit
  	@listing = Listing.find(params[:id])
    render json: @listing
  end

  def update
    @listing = Listing.find(params[:id])
		if @listing.update()
			render json: @listing
		else
			render nothing: true
		end
  end

  def destroy
    @listing = Listing.find(params[:id])
    if @listing.destroy
      render json: @listing
    else
      render nothing: true
    end
  end

  private
   def listing_params
     params.require(:listing).permit(:address, :city, :state, :borough, :zip, :building_name, :apt_num, :list_date, :active, :inactive_date, :modified_date, :price, :rent_or_sublease, :guest_capacity)
   end
end
