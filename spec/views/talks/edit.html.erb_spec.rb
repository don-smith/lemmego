require 'spec_helper'

describe "talks/edit.html.erb" do
  before(:each) do
    @talk = assign(:talk, stub_model(Talk,
      :new_record? => false,
      :title => "MyString",
      :abstract => "MyText",
      :level => "MyString",
      :event => mock_model(Event, :id => 1)
    ))
  end

  it "renders the edit talk form" do
    render
    rendered.should have_selector("form", :action => talk_path(@talk), :method => "post") do |form|
      form.should have_selector("input#talk_title", :name => "talk[title]")
      form.should have_selector("textarea#talk_abstract", :name => "talk[abstract]")
      form.should have_selector("input#talk_level", :name => "talk[level]")
    end
  end
end
