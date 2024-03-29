class Api::v1::ListingsController < ApplicationController

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
      render json: { errors: @listing.errors.full_messages }, status: 422
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
			render json: { errors: @listing.errors.full_messages }, status: 422
		end
  end

  def destroy
    @listing = Listing.find(params[:id])
    if @listing.destroy
      render json: @listing
    else
      render json: { errors: @listing.errors.full_messages }, status: 422
    end
  end

  def basic_search
    @listings = Listing.where(borough: params[:borough], room_type: params[:room_type], price: params[:min_price]..params[:max_price])
    render json: @listings
  end

  def filter
    @listing = Listing.where()
  end

  private
   def listing_params
     params.require(:listing).permit(:address, :city, :state, :borough, :zip, :building_name, :apt_num, :list_date, :active, :inactive_date, :room_type, :modified_date, :price, :rent_or_sublease, :guest_capacity)
   end
end
