class OffersController < ApplicationController

  # GET /offers
  # GET /offers.json
  def index
    #if logged_in?
    #else
    #  redirect_to login_path
    #end
    #redirect_to login_path
    @offers = Offer.all
  end

end
