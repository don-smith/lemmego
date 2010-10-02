require 'spec_helper'

describe "talks/new.html.erb" do
  before(:each) do
    assign(:talk, stub_model(Talk,
      :new_record? => true,
      :title => "MyString",
      :abstract => "MyText",
      :level => "MyString",
      :event_id => 1
    ))
    view.stub!(:event_talks_path).and_return {"/events/12/talks"}
  end

  it "renders new talk form" do
    render
    rendered.should have_selector("form", :action => talks_path, :method => "post") do |form|
      form.should have_selector("input#talk_title", :name => "talk[title]")
      form.should have_selector("textarea#talk_abstract", :name => "talk[abstract]")
      form.should have_selector("input#talk_level", :name => "talk[level]")
    end
  end
end
