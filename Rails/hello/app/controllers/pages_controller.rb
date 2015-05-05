class PagesController < ApplicationController
  
  def home
    
    @home = Home.new
    
  end
  
end
