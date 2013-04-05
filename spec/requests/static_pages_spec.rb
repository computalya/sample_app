require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have a content 'Sample App' " do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Sample App | Home')
    end
  end
end