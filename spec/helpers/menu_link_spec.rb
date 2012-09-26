require 'spec_helper'
describe ApplicationHelper do
  describe "#menu_link" do

    it "should have link to home page" do
      helper.menu_link.should have_link('Home', :href => '/static_pages/home')
    end

    it "should have link to about page" do
      helper.menu_link.should have_link('About', :href => about_path )
    end

    it "should have link to who-we-are page" do
      helper.menu_link.should have_link('Who We Are', :href => '/who-we-are' )
    end
  end
end