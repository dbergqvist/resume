require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
      it "should be successful" do
        get 'home'
        response.should be_success
      end
      it "should have the right title" do
        get 'home'
        response.should have_selector("title", :content => "dbergqvist | home")
      end
    end

  describe "GET 'resume'" do
    it "should be successful" do
      get 'resume'
      response.should be_success
    end
    it "should have the right title" do
      get 'resume'
      response.should have_selector("title", :content => "dbergqvist | resume")
    end
  end

end
