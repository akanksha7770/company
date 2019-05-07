class NodesController < ApplicationController
def index
		@nodes = Node.all
	end

	def new
		@nodes = Node.new
  end

  def edit
   @nodes = Node.find(params[:id])
 	end

  def create
   @nodes = Node.new(nodes_params)
   if @nodes.save
     redirect_to @nodes
   else
     render 'new'
   end
	end

	def destroy
    @nodes = Node.find(params[:id])
    @nodes.destroy
    redirect_to nodes_path
  end

  def show
    @nodes = Node.find(params[:id])
  end

  def update
    @nodes = Node.find(params[:id])
 
    if @nodes.update(nodes_params)
      redirect_to @nodes
    else
      render 'edit'
    end
  end

  private
	  def nodes_params
      params.require(:node).permit(:node_name, :place_id)
    end
end
