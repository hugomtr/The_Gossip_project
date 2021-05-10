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
    puts "hello #{params['first_name']} #{params['last_name']}"
    redirect_to "/#{params['first_name']}"
  end

  def user
  end
    
  
end
