class PlacesController < ApplicationController
	before_action :authenticate_owner!, except: [:show, :index]
	before_action :set_place, only: [:show, :update, :edit, :destroy]
	before_action :authorize_owner!, only: [:edit, :update, :destroy]
	
	def new
		@place = Place.new
		load_categories
	end

	def index
		@places = Place.all
	end

	def show
		
	end

	def create
		@place = Place.new(place_params)
		@place = current_owner.places.new(place_params)
		
		if @place.save
			flash[:success] = 'Success'
			redirect_to place_path(@place)
		else
			load_categories
			render :new
		end
	end

	def edit
    	load_categories
  	end

  	def update
  		if @place.update(place_params)
  			redirect_to place_path(@place)
  		else
  			load_categories
  			render :edit
  		end
  	end

  	def destroy
		@place.destroy
		redirect_to places_path, notice: "Idea was deleted"
	end

	private

	def authorize_owner!
		redirect_to root_path, notice: "Not authorized" unless @place.owner_id == current_owner.id	
	end
	
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
