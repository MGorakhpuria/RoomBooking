class BookingsController < ApplicationController

  #before_action :set_room, only: [:create, :edit, :update]
  before_action :set_booking, only: [:edit, :update, :cancel]

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = current_user.bookings.new(bookings_params)

    if @booking.save
      notice = 'Booking has been created successfully'
    else
      notice = @booking.errors.full_messages.map{ |m| "#{m}."}.join('<br>').html_safe
    end
    redirect_to hotels_path, notice: notice
  end

  def edit
  end

  def update
    if @booking.update(booking_update_params)
      notice = 'Booking has been updated successfully'
    else
      notice = @booking.errors.full_messages.map{ |m| "#{m}."}.join('<br>').html_safe
    end
    redirect_to bookings_path, notice: notice
  end

  def cancel
    if @booking.cancel!
      notice = 'Booking has been canceled successfully'
    else
      notice = @booking.errors.full_messages.map{ |m| "#{m}."}.join('<br>').html_safe
    end
    redirect_to bookings_path, notice: notice
  end

  private

  def set_booking
    @booking = Booking.find_by(id: params[:id])
    if @booking.blank?
      redirect_to hotels_path, notice: "Something went wrong"
    end
  end

  # def set_room
  #   @room = Room.find_by(id: params[:room_id])
  # end

  def bookings_params
    params.permit(:check_in, :check_out, :room_id, :hotel_id)
  end

  def booking_update_params
    params.require(:booking).permit(:check_in, :check_out, :room_id)
  end
end
