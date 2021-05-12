class StaticController < ApplicationController

  def accueil
    @gossip = Gossip.all
  end
end
