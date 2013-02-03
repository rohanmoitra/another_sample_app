require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    before {visit root_path}
      it "should have the content 'Sample App'" do
        page.should have_content('Sample App')
      end
    
      it "should have the right title" do
        page.should have_selector('title',:text => "Sample App | Home")
      end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the h1 as 'Help Page'" do
      visit help_path
      page.should have_selector('h1',:text => "Help Page")
    end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end

    it "should have the h1 as 'About Us'" do
      visit about_path
      page.should have_selector('h1',:text => "About Us")
    end

  end
  
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end

    it "should have the h1 as 'Contact'" do
      visit contact_path
      page.should have_selector('h1',:text => "Contact")
    end

  end
  
end
