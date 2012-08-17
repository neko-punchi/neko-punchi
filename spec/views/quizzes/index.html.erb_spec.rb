require 'spec_helper'

describe "quizzes/index" do
  before(:each) do
    assign(:quizzes, [
      stub_model(Quiz,
        :text => "MyText",
        :choose => "MyText",
        :answer => "Answer",
        :hint => "MyText"
      ),
      stub_model(Quiz,
        :text => "MyText",
        :choose => "MyText",
        :answer => "Answer",
        :hint => "MyText"
      )
    ])
  end

  it "renders a list of quizzes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
