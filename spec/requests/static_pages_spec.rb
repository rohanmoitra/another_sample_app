require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "Sample App | Home")
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the h1 as 'Help Page'" do
      visit '/static_pages/help'
      page.should have_selector('h1',:text => "Help Page")
    end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the h1 as 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1',:text => "About Us")
    end

  end
  
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end

    it "should have the h1 as 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',:text => "Contact")
    end

  end
  
end
