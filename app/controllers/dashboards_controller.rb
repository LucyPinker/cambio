class DashboardsController < ApplicationController

  def show
    @listing = Listing.new
  end
end
