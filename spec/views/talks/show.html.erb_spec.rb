require 'spec_helper'

describe "talks/show.html.erb" do
  before(:each) do
    @talk = assign(:talk, stub_model(Talk,
      :title => "Title",
      :abstract => "MyText",
      :level => "Level",
      :event_id => 1
    ))
  end

  it "renders attributes in <p>" do
    pending "because I haven't decided what to do here yet"
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("MyText".to_s)
    rendered.should contain("Level".to_s)
    rendered.should contain(1.to_s)
  end
end
