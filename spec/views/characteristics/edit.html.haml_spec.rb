require 'spec_helper'

describe "characteristics/edit.html.haml" do
  before(:each) do
    @characteristic = assign(:characteristic, stub_model(Characteristic,
      :new_record? => false,
      :content => "MyString"
    ))
  end

  it "renders the edit characteristic form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => characteristic_path(@characteristic), :method => "post" do
      assert_select "input#characteristic_content", :name => "characteristic[content]"
    end
  end
end
