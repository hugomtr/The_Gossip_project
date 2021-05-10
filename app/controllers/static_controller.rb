class StaticController < ApplicationController
  def team

  end

  def contact
  end

  def accueil
    @gossip_all = Gossip.all
  end

  def welcome
  end

  def welcome_post
    redirect_to "/#{params['first_name']}"
    puts params
  end
    
  def user
    @user_first_name = User.last.first_name
  end


end
