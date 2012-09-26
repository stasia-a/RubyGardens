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
  end
end
