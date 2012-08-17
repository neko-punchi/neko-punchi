require 'spec_helper'

describe "quizzes/show" do
  before(:each) do
    @quiz = assign(:quiz, stub_model(Quiz,
      :text => "MyText",
      :choose => "MyText",
      :answer => "Answer",
      :hint => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Answer/)
    rendered.should match(/MyText/)
  end
end
