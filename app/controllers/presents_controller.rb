class PresentsController < ApplicationController
  def index
    @available_presents = Present.all.select(&:available)
    @taken_presents = Present.all.reject(&:available)
  end

  def reserve
    @present = Present.find(params[:id])
    if @present.available
      @present.available = false
    else
      @present.available = true
    end
    @present.save
    redirect_to root_path
  end

  def new
    @present = Present.new
    @available_presents = Present.all.select(&:available)
  end

  def create
    @present = Present.create(present_params)
    redirect_to secret_path
  end

  def destroy
    present = Present.find(params[:id])
    present.destroy
    redirect_to secret_path
  end

  private

  def present_params
    params.require(:present).permit(:title, :photo, :link)
  end
end
