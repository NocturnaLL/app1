class PlacesController < ApplicationController
	before_action :set_place, only: [:show, :update, :edit, :destroy]
	def new
		@place = Place.new
		load_categories
	end

	def index
		@places = Place.all
	end

	def show
		#@place = Place.find(params[:id])
	end

	def create
		@place = Place.new(place_params)
		
		if @place.save
			flash[:success] = 'Islem basariyla tamamlandi'
			redirect_to place_path(@place)
		else
			load_categories
			render :new
		end
	end

	def edit
    	#@place = Place.find(params[:id])
    	load_categories
  	end

  	def update
  		#@place = Place.find(params[:id])
  		if @place.update(place_params)
  			redirect_to place_path(@place)
  		else
  			load_categories
  			render :edit
  		end
  	end

  	def destroy
		#@place = Place.find(params[:id])
		@place.destroy
		redirect_to places_path
	end

	private
	
	def place_params
		params.require(:place).permit(:name, :address, :established_at, :phone_number, :contact_mail, :city, :category_id)
    end	

    def set_place
    	@place = Place.find(params[:id]) 	
  	end	

  	def load_categories
  		@categories = Category.all.collect {|c| [c.name, c.id ] }
  	end
end
