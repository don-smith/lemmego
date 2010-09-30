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
  end

  it "renders a list of talks" do
    pending "because I haven't decided what to do here yet"
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Level".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
