class PlacesController < ApplicationController
	def new
	end

	def index
		@places = Place.all
	end

	def show
		
		@place = Place.find(params[:id])
	end
end
