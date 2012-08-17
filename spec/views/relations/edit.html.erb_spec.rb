require 'spec_helper'

describe "relations/edit" do
  before(:each) do
    @relation = assign(:relation, stub_model(Relation,
      :category => nil,
      :sub_category => nil
    ))
  end

  it "renders the edit relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relations_path(@relation), :method => "post" do
      assert_select "input#relation_category", :name => "relation[category]"
      assert_select "input#relation_sub_category", :name => "relation[sub_category]"
    end
  end
end
