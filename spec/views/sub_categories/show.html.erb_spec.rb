require 'spec_helper'

describe "sub_categories/show" do
  before(:each) do
    @sub_category = assign(:sub_category, stub_model(SubCategory,
      :category => nil,
      :sub_category => "Sub Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Sub Category/)
  end
end
