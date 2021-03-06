class PlacesController < ApplicationController
	def index
		@places = Place.all
	end

	def new
      @place = Place.new	
	end

	def create
		  @place = Place.new(place_params)
		 
		 if @place.save
		  redirect_to @place
		else
			render 'new'
		end
    end 

	def show
		@place = Place.find(params[:id])
		
	end

	def edit
		@place = Place.find(params[:id])

	end

	def update
	 @place = Place.find(params[:id])

	 if @place.update(place_params)
      redirect_to @place
    else
      render 'edit'
    end

	end


	def destroy
	 @place = Place.find(params[:id])
		 @place.destroy
		redirect_to @place
	end
	 
	private
	  def place_params
	    params.require(:place).permit(:place_name, :my_company_id)
	  end
end
