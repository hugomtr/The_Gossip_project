class StaticController < ApplicationController
  
  def team
  end

  def contact
  end

  def accueil
  end

  def welcome
  end

  def welcome_post
    redirect_to "/user/#{params['first_name']}"
    puts params
  end

end
