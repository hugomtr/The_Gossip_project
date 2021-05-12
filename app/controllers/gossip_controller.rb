class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    respond_to do |f|
      if @gossip.update(post_params)
        f.html { redirect_to '/gossip', notice: "Gossip was successfully updated." }
      else
        f.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  
  def create
    redirect_to '/gossip'
  end 
   
  
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to '/gossip'
  end
  
  private
  def post_params
    params.require(:gossip).permit(:title, :content)
  end



end


