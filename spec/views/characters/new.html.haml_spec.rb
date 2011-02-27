require 'spec_helper'

describe "characters/new.html.haml" do
  before(:each) do
    assign(:character, stub_model(Character,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new character form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => characters_path, :method => "post" do
      assert_select "textarea#character_body", :name => "character[body]"
    end
  end
end
