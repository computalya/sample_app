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

  describe "Help Page" do
    it "should have a content 'Help' " do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Sample App | Help')
    end
  end

  describe "Contact Page" do
    it "should have a content 'Contact' " do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Sample App | Contact')
    end
  end
end