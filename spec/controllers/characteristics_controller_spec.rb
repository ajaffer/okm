require 'spec_helper'

describe CharacteristicsController do

  def mock_characteristic(stubs={})
    (@mock_characteristic ||= mock_model(Characteristic).as_null_object).tap do |characteristic|
      characteristic.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all characteristics as @characteristics" do
      Characteristic.stub(:all) { [mock_characteristic] }
      get :index
      assigns(:characteristics).should eq([mock_characteristic])
    end
  end

  describe "GET show" do
    it "assigns the requested characteristic as @characteristic" do
      Characteristic.stub(:find).with("37") { mock_characteristic }
      get :show, :id => "37"
      assigns(:characteristic).should be(mock_characteristic)
    end
  end

  describe "GET new" do
    it "assigns a new characteristic as @characteristic" do
      Characteristic.stub(:new) { mock_characteristic }
      get :new
      assigns(:characteristic).should be(mock_characteristic)
    end
  end

  describe "GET edit" do
    it "assigns the requested characteristic as @characteristic" do
      Characteristic.stub(:find).with("37") { mock_characteristic }
      get :edit, :id => "37"
      assigns(:characteristic).should be(mock_characteristic)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created characteristic as @characteristic" do
        Characteristic.stub(:new).with({'these' => 'params'}) { mock_characteristic(:save => true) }
        post :create, :characteristic => {'these' => 'params'}
        assigns(:characteristic).should be(mock_characteristic)
      end

      it "redirects to the created characteristic" do
        Characteristic.stub(:new) { mock_characteristic(:save => true) }
        post :create, :characteristic => {}
        response.should redirect_to(characteristic_url(mock_characteristic))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved characteristic as @characteristic" do
        Characteristic.stub(:new).with({'these' => 'params'}) { mock_characteristic(:save => false) }
        post :create, :characteristic => {'these' => 'params'}
        assigns(:characteristic).should be(mock_characteristic)
      end

      it "re-renders the 'new' template" do
        Characteristic.stub(:new) { mock_characteristic(:save => false) }
        post :create, :characteristic => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested characteristic" do
        Characteristic.should_receive(:find).with("37") { mock_characteristic }
        mock_characteristic.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :characteristic => {'these' => 'params'}
      end

      it "assigns the requested characteristic as @characteristic" do
        Characteristic.stub(:find) { mock_characteristic(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:characteristic).should be(mock_characteristic)
      end

      it "redirects to the characteristic" do
        Characteristic.stub(:find) { mock_characteristic(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(characteristic_url(mock_characteristic))
      end
    end

    describe "with invalid params" do
      it "assigns the characteristic as @characteristic" do
        Characteristic.stub(:find) { mock_characteristic(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:characteristic).should be(mock_characteristic)
      end

      it "re-renders the 'edit' template" do
        Characteristic.stub(:find) { mock_characteristic(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested characteristic" do
      Characteristic.should_receive(:find).with("37") { mock_characteristic }
      mock_characteristic.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the characteristics list" do
      Characteristic.stub(:find) { mock_characteristic }
      delete :destroy, :id => "1"
      response.should redirect_to(characteristics_url)
    end
  end

end
