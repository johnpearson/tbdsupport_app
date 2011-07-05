class PagesController < ApplicationController
  
  # This is the root home page
  def home
  end
  
  # This is the about page
  def about
    @title = "About"
  end
  
  def location
    @title = "Location"
  end
  
  def service
    @title = "Service Information"
  end
  
  def contact
    @title = "Contact Information"
  end

end
