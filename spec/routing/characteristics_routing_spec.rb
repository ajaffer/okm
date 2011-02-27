require "spec_helper"

describe CharacteristicsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/characteristics" }.should route_to(:controller => "characteristics", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/characteristics/new" }.should route_to(:controller => "characteristics", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/characteristics/1" }.should route_to(:controller => "characteristics", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/characteristics/1/edit" }.should route_to(:controller => "characteristics", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/characteristics" }.should route_to(:controller => "characteristics", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/characteristics/1" }.should route_to(:controller => "characteristics", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/characteristics/1" }.should route_to(:controller => "characteristics", :action => "destroy", :id => "1")
    end

  end
end
