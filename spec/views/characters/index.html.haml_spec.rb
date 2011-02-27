require 'spec_helper'

describe "characters/index.html.haml" do
  before(:each) do
    assign(:characters, [
      stub_model(Character,
        :body => "MyText"
      ),
      stub_model(Character,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of characters" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
