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
    @gossip.update(post_params)
    redirect_to '/gossip'
  end

  def create
    @gossip = Gossip.create(post_params,user:User.first)
    redirect_to '/gossip'
  end  
  
  def destroy
  end
  private

  def post_params
    params.require(:gossip).permit(:title, :content)

  end



end


