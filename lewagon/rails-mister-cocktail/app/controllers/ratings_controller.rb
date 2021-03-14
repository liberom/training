class RatingsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @rating.cocktail = @cocktail
    if @rating.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to cocktail_path(@rating.cocktail)
  end

  private

  def rating_params
    params.require(:rating).permit(:score, :comment, :cocktail_id)
  end
end
