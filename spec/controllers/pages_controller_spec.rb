require 'spec_helper'

describe PagesController do

  describe "GET 'resume'" do
    it "should be successful" do
      get 'resume'
      response.should be_success
    end
  end

end
