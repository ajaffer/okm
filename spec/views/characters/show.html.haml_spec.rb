require 'spec_helper'

describe "characters/show.html.haml" do
  before(:each) do
    @character = assign(:character, stub_model(Character,
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
