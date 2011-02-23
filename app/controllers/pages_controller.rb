class PagesController < ApplicationController
  
  def home
    @title = "home"
  end
  
  def resume
    @title = "resume"
  end
end
