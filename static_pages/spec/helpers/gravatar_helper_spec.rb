require 'spec_helper'
describe StaticPagesHelper do
  describe "#gravatar_helper" do
    it "returns the link of gravatar" do
      helper.gravatar_helper("paveltyk@gmail.com").should == 'http://www.gravatar.com/avatar/22e9fd136b3bf18b810f87897aab912a?d=monsterid'
    end
  end
end