require 'spec_helper'

describe "talks/show.html.erb" do
  before(:each) do
    @talk = assign(:talk, stub_model(Talk,
      :title => "Title",
      :abstract => "MyText",
      :level => "Level",
      :event => mock_model(Event, :id => 1)
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("MyText".to_s)
    rendered.should contain("Level".to_s)
  end
end
