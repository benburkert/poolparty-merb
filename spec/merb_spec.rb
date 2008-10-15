require "#{File.dirname(__FILE__)}/spec_helper"
require "#{File.dirname(__FILE__)}/../merb"

describe "Merb spec" do
  it "should have the class Merb available" do    
    lambda {PoolPartyMerbClass.new}.should_not raise_error
  end
  describe "instance" do
    before(:each) do
      @merb = PoolPartyMerbClass.new
      @merb.install
    end
    it "should have the method enable available on the merb class" do
      @merb.respond_to?(:enable).should == true
    end
    it "should call give it a package (gem) resource" do
      @merb.resource(:gempackage).empty?.should == false
    end
  end
end