require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "has correct title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'RubyGardens :: Home')
    end

  it "has welcome content" do
      visit '/static_pages/home'
      page.should have_content('Welcome to RubyGardens Home')
  end

    it "should have link to about page" do
      visit '/static_pages/home'
      click_link 'About'
      current_path.should == '/static_pages/about'
    end
  end

  describe "About page" do
    it "has correct title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: 'RubyGardens :: About')
    end

    it "has welcome content" do
      visit '/static_pages/about'
      page.should have_content('About RubyGardens')
    end

    it "should have link to home page" do
      visit '/static_pages/about'
      click_link 'Home'
      current_path.should == '/static_pages/home'
    end
  end

  describe "Who we are page" do
    it "should have correct title" do
      visit who_we_are_path
      page.should have_selector('title', text: 'RubyGardens :: Who We Are')
    end

    it "should have about content" do
      visit who_we_are_path
      page.should have_content('Who We Are')
    end
  end
end
