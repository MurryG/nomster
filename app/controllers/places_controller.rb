class PlacesController < ApplicationController
include Pagy::Backend

  def index
    @pagy, @places = pagy(Place.all, items: 3)
  end

  def new
    @place = Place.new
  end

end
