require 'spec_helper'

describe "problems/edit" do
  before(:each) do
    @problem = assign(:problem, stub_model(Problem,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit problem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", problem_path(@problem), "post" do
      assert_select "input#problem_title[name=?]", "problem[title]"
      assert_select "textarea#problem_description[name=?]", "problem[description]"
    end
  end
end
