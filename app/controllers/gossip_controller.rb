class GossipController < ApplicationController
  def index
    @gossip_all = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
    @gossip = Gossip.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  
  end

  def create
    @gossip = Gossip.new(post_params)
    @gossip.save
    redirect_to "/gossip"
  end


  def edit
    @gossip = Gossip.find(params[:id])
  end


  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(post_params)
    redirect_to "/gossip"
  end 

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to "/gossip"
  end

  def post_params
    params.require(:gossip).permit(:title, :content)
  end

end


