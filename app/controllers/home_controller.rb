class HomeController < ApplicationController
  
  def index
    @testimonial = Testimonial.first
  end
  
  def about_us
    
  end
  
  def convenience_store
    
  end
  
  def privacy
    
  end
  
  def clients_list
    
  end
  
  def bars
    @bars = Project.type("Bars & Restaurants")
  end
  
  def retail
    @retails = Project.type("Retail & Office")
  end
  
  def casino
    @casinos = Project.type("Casino & Hospitality")
  end
  
  def c_store
    @cstores = Project.type("Fuel Stations & C-Stores")
  end
  
end
