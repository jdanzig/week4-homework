class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @review = Review.new
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place.title = params[:place][:title]
    @place.price = (params[:place][:price].to_f * 100.0).to_i
    @place.photo_url = params[:place][:photo_url]
    @place.desc = params[:place][:desc]
    @place.save!

    redirect_to @place
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    
    @place.title = params[:place][:title]
    @place.price = (params[:place][:price].to_f * 100.0).to_i
    @place.photo_url = params[:place][:photo_url]
    @place.desc = params[:place][:desc]
    @place.save!
    
    redirect_to @place
  end

  def destroy
    Place.find(params[:id]).destroy
    redirect_to places_path
  end


end
