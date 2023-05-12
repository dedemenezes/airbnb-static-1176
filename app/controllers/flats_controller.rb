require 'open-uri'

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    @flats = JSON.parse(URI.open(FLATS_URL).read)
  end
end
