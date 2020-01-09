class MyCompaniesController < ApplicationController

	def index
		@mycompanies = MyCompany.all
	end

	def new
      @mycompany = MyCompany.new	
	end

	def create
		  @mycompany = MyCompany.new(mycompany_params)
		 
		 if @mycompany.save
		  redirect_to @mycompany
		else
			render 'new'
		end
    end 

	def show
		@mycompany = MyCompany.find(params[:id])
		
	end

	def edit
		@mycompany = MyCompany.find(params[:id])

	end

	def update
	 @mycompany = MyCompany.find(params[:id])

	 if @mycompany.update(mycompany_params)
      redirect_to @mycompany
    else
      render 'edit'
    end

	end


	def destroy
	 @mycompany = MyCompany.find(params[:id])
		 @mycompany.destroy
		redirect_to @mycompany
	end
	 
	private
	  def mycompany_params
	    params.require(:my_company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date, :active)
	  end

end
