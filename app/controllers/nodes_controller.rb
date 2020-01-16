class NodesController < ApplicationController
	def index
		@nodes = Node.all
	end

	def new
      @node = Node.new	
	end

	def create
		  @node = Node.new(node_params)
		 
		 if @node.save
		  redirect_to @node
		else
			render 'new'
		end
    end 

	def show
		@node = Node.find(params[:id])
		
	end

	def edit
		@node = Node.find(params[:id])

	end

	def update
	 @node = Node.find(params[:id])

	 if @node.update(node_params)
      redirect_to @node
    else
      render 'edit'
    end

	end


	def destroy
	 @node = Node.find(params[:id])
		 @node.destroy
		redirect_to @node
	end
	 
	private
	  def node_params
	    params.require(:node).permit(:node_name, :place_id)
	  end
end
