class ListingsController < ApplicationController

  def index
    @listings = Listing.all
      @markers = @listings.geocoded.map do |flat|
    {
      lat: listing.latitude,
      lng: listing.longitude
    }
  end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to listings_path
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    if @listing.destroy
      redirect_to listings_path
    end
  end

  def new
    @listing = Listing.new
  end

  private

  def listing_params
  params.require(:listing).permit(:location, :house_type, :photo, :start_date, :end_date, :pets, :plants, :bedrooms, :guests)
  end

end
