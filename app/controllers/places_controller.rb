class PlacesController < ApplicationController
	def new
		@place = Place.new
	end

	def index
		@places = Place.all
	end

	def show
		
		@place = Place.find(params[:id])
	end

	def create
		@place = Place.new(strong_params)
		if @place.save
			redirect_to place_path(@place)
		else
			render :new
		end
	end

	def strong_params
		params.permit(:name, :address, :established_at, :phone_number, :contact_mail, :city)
    end		
end
