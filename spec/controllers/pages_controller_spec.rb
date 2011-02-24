require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "dbergqvist"
  end
  
  describe "GET 'home'" do 
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => @base_title + " | home")
      end
    end

  describe "GET 'resume'" do
    it "should be successful" do
      get 'resume'
      response.should be_success
    end
    it "should have the right title" do
      get 'resume'
      response.should have_selector("title", :content => @base_title + " | resume")
    end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title", :content => @base_title +  " | help")
    end
  end

end
