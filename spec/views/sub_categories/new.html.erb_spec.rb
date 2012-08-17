require 'spec_helper'

describe "sub_categories/new" do
  before(:each) do
    assign(:sub_category, stub_model(SubCategory,
      :category => nil,
      :sub_category => "MyString"
    ).as_new_record)
  end

  it "renders new sub_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_categories_path, :method => "post" do
      assert_select "input#sub_category_category", :name => "sub_category[category]"
      assert_select "input#sub_category_sub_category", :name => "sub_category[sub_category]"
    end
  end
end
