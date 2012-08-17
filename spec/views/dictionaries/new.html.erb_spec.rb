require 'spec_helper'

describe "dictionaries/new" do
  before(:each) do
    assign(:dictionary, stub_model(Dictionary,
      :word => "MyString",
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new dictionary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dictionaries_path, :method => "post" do
      assert_select "input#dictionary_word", :name => "dictionary[word]"
      assert_select "textarea#dictionary_text", :name => "dictionary[text]"
    end
  end
end
