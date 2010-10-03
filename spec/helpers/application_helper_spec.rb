require 'spec_helper'

describe ApplicationHelper do
  
  it 'should render page titles' do
    page_title = 'Page Title'
    helper.should_receive :content_for, :title => page_title
    helper.title page_title
  end
  
end