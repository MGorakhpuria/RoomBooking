class HotelsController < ApplicationController

  before_action :set_hotel, only: [:show]

  def index
    @hotels = Hotel.all
    @hotels = @hotels.search_by_state(params[:state]) if params[:state].present?
  end

  def show
  end

  private

  def set_hotel
    @hotel = Hotel.find_by(id: params[:id])
    if @hotel.blank?
      redirect_to hotels_path, notice: "Something went wrong"
    end
  end
end
