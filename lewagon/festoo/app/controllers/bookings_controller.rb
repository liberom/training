class BookingsController < ApplicationController
  before_action :find_product, only: [:edit, :update]
  before_action :set_booking, only: [:destroy, :edit, :update]

  def new
    @product = Product.find(params[:product_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @product = Product.find(params[:product_id])
    @booking.product = @product
    @booking.user = current_user
    if @booking.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    # @booking = Booking.find(params[:id])
  end

  def update
    # @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    # @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to products_path
  end

  private

  def find_product
    @product = Product.find(params[:product_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:b_date, :e_date, :sched_qty, :deliv_status, :user_id, :address, :product_id, :payment_status)
  end
end
