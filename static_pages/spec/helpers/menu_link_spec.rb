require 'spec_helper'
describe ApplicationHelper do


  describe "#menu_link" do

    it "should have link to home page" do
      helper.menu_link.should have_selector('li', text: 'Home')
    end

    it "should have link to about page" do
      helper.menu_link.should have_selector('li', text: 'About')
    end
  end
end