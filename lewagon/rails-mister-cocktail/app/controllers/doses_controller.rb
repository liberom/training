class DosesController < ApplicationController
  # before_action :set_cocktail
  # before_action :set_dose

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  # end

  # def set_dose
  #   @dose = Dose.find(params[:id])
  # end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
