require 'spec_helper'
describe ApplicationHelper do


  describe "#menu_link" do

    it "should have link to home page" do
      helper.menu_link.should have_selector('li a',:href => home_path, content: 'Home')
    end

    it "should have link to about page" do
      helper.menu_link.should have_selector('li a',:href => about_path, content: 'About')
    end

    it "should have link to who-we-are page" do
      helper.menu_link.should have_selector('li a',:href => '/who-we-are', content: 'what?')
    end

    it 'ffffffff' do
      helper.menu_link.should have_selector('li') do |a|
        a.should have_selector('a',:href => home_path, content: 'Home')
      end
    end

    it 'dddddddd' do
      helper.menu_link.should have_selector('li') do |a|
        a.should have_selector('a',:href => about_path, content: 'Home')
      end
    end
  end
end