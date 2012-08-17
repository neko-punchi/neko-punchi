require 'spec_helper'

describe "quizzes/new" do
  before(:each) do
    assign(:quiz, stub_model(Quiz,
      :text => "MyText",
      :choose => "MyText",
      :answer => "MyString",
      :hint => "MyText"
    ).as_new_record)
  end

  it "renders new quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quizzes_path, :method => "post" do
      assert_select "textarea#quiz_text", :name => "quiz[text]"
      assert_select "textarea#quiz_choose", :name => "quiz[choose]"
      assert_select "input#quiz_answer", :name => "quiz[answer]"
      assert_select "textarea#quiz_hint", :name => "quiz[hint]"
    end
  end
end
