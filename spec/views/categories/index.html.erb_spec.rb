require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :category => "Category"
      ),
      stub_model(Category,
        :category => "Category"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
