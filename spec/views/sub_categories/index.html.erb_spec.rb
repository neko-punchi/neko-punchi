require 'spec_helper'

describe "sub_categories/index" do
  before(:each) do
    assign(:sub_categories, [
      stub_model(SubCategory,
        :category => nil,
        :sub_category => "Sub Category"
      ),
      stub_model(SubCategory,
        :category => nil,
        :sub_category => "Sub Category"
      )
    ])
  end

  it "renders a list of sub_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Sub Category".to_s, :count => 2
  end
end
