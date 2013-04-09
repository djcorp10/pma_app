require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

   # it "should have the h1 'PMA App'" do
   #   visit '/static_pages/home'
   #   page.should have_selector('h1', :text => 'PMA App')
   # end

  it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Home")
    end
  end 

   describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

  it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "About Us")
    end
  end 
end 