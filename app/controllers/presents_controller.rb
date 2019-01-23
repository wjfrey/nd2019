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
end
