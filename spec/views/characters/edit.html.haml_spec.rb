require 'spec_helper'

describe "characters/edit.html.haml" do
  before(:each) do
    @character = assign(:character, stub_model(Character,
      :new_record? => false,
      :body => "MyText"
    ))
  end

  it "renders the edit character form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => character_path(@character), :method => "post" do
      assert_select "textarea#character_body", :name => "character[body]"
    end
  end
end
