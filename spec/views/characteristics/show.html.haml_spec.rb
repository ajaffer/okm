require 'spec_helper'

describe "characteristics/show.html.haml" do
  before(:each) do
    @characteristic = assign(:characteristic, stub_model(Characteristic,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
