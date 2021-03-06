class CountriesController < ApplicationController

	def index
		@countries = Country.all
	end

	def new
      @country = Country.new	
	end

	def create
		  @country = Country.new(country_params)
		 
		 if @country.save
		  redirect_to @country
		else
			render 'new'
		end
    end 

	def show
		@country = Country.find(params[:id])
		
	end

	def edit
		@country = Country.find(params[:id])

	end

	def update
	 @country = Country.find(params[:id])

	 if @country.update(country_params)
      redirect_to @country
    else
      render 'edit'
    end

	end


	def destroy
	 @country = Country.find(params[:id])
		 @country.destroy
		redirect_to @country
	end
	 
	private
	  def country_params
	    params.require(:country).permit(:country_name)
	  end
end
