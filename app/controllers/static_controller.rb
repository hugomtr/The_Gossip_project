class StaticController < ApplicationController

  def accueil
    @gossip = Gossip.all
  end

  def welcome_post
    redirect_to "/gossip"

    puts params
  end

end
