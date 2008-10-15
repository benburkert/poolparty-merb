require "poolparty"
include PoolParty::Resources

require "#{File.dirname(__FILE__)}/../merb"

describe "Apache spec" do
  it "should have the class apache available" do    
    lambda {PoolPartyMerbClass.new}.should_not raise_error
  end
  describe "instance" do
    before(:each) do
      @merb = PoolPartyMerbClass.new
      @merb.install
    end
    it "should have the method enable available on the apache class" do
      @merb.respond_to?(:enable).should == true
    end
    it "should call give it a package (gem) resource" do
      @merb.resource(:gempackage).empty?.should == false
    end
  end
end