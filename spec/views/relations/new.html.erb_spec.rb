require 'spec_helper'

describe "relations/new" do
  before(:each) do
    assign(:relation, stub_model(Relation,
      :category => nil,
      :sub_category => nil
    ).as_new_record)
  end

  it "renders new relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relations_path, :method => "post" do
      assert_select "input#relation_category", :name => "relation[category]"
      assert_select "input#relation_sub_category", :name => "relation[sub_category]"
    end
  end
end
