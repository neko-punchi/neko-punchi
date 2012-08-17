require 'spec_helper'

describe "sub_categories/edit" do
  before(:each) do
    @sub_category = assign(:sub_category, stub_model(SubCategory,
      :category => nil,
      :sub_category => "MyString"
    ))
  end

  it "renders the edit sub_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_categories_path(@sub_category), :method => "post" do
      assert_select "input#sub_category_category", :name => "sub_category[category]"
      assert_select "input#sub_category_sub_category", :name => "sub_category[sub_category]"
    end
  end
end
