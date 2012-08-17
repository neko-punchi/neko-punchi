require 'spec_helper'

describe "dictionaries/show" do
  before(:each) do
    @dictionary = assign(:dictionary, stub_model(Dictionary,
      :word => "Word",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Word/)
    rendered.should match(/MyText/)
  end
end
