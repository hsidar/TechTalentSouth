class WelcomeController < ApplicationController
  def index
    @homeland = "Puerto Rico"
    @countries = ['Norway','Sweden','Peru']
    @toilets = ["toilet.JPG", "toilets.jpg", "toilet2.jpg"]
  end

  def about
    @color = params[:color]
    @size = params[:size]
  end
  
  def contact
  end
end



