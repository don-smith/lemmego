require 'spec_helper'

describe "talks/index.html.erb" do
  before(:each) do
    assign(:talks, [
      stub_model(Talk,
        :title => "Title",
        :abstract => "MyText",
        :level => "Level",
        :event_id => 1
      ),
      stub_model(Talk,
        :title => "Title",
        :abstract => "MyText",
        :level => "Level",
        :event_id => 1
      )
    ])
    view.stub!(:new_event_talk_path).and_return {"/events/12/talks/new"}
  end

  it "renders a list of talks" do
    render 
    rendered.should have_selector("h3", :content => "Title".to_s, :count => 2)
  end
end
