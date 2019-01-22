class PresentsController < ApplicationController
  def index
    @available_presents = Present.all.select(&:available)
    @taken_presents = Present.all.reject(&:available)
  end
end
