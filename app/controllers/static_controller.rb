class StaticController < ApplicationController
  def team

  end

  def contact
  end

  def accueil
    @gossip = Gossip.all
  end

  def welcome
  end

  def welcome_post
    redirect_to "/user/#{params['first_name']}"
    puts params
  end
    
  def user

  end
  
  def gossip_page
    @gossip = Gossip.all
  end



end
