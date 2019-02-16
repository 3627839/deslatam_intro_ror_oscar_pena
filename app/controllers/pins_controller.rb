class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def show
  end

  

  def edit
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pins_params)
    @pin.user = current_user
    if @pin.save!
      redirect_to pins_path
    else
      redirect new_pin_path, notice: 'Error desonocido'
    end
  
   
  end
  
  private

  def pins_params
    params.require(:pin).permit(:name, :desc, :photo)
  end
end
