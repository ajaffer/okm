require 'spec_helper'

describe "characteristics/new.html.haml" do
  before(:each) do
    assign(:characteristic, stub_model(Characteristic,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new characteristic form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => characteristics_path, :method => "post" do
      assert_select "input#characteristic_content", :name => "characteristic[content]"
    end
  end
end
