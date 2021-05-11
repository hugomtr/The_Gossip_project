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
    puts @user_first_name = params['first_name']
    redirect_to "/user/#{params['first_name']}"
    puts params
  end
    
  def user
    @user = User.all
  end
  
  def gossip_page
    @gossip = Gossip.all
  end



end
