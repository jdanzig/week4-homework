class ReviewsController < ApplicationController

  def create
    r = Review.new
    r.place_id = params[:place_id].to_i
    r.rating = params[:rating].to_i
    r.desc = params[:desc]
    r.save!
    redirect_to Place.find(r.place_id)
  end

end
