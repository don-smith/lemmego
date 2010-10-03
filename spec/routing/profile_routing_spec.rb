require 'spec_helper'

describe ProfileController do
  
  describe 'routing' do
    
    it 'recognizes and generates #show' do
      { :get => '/profile' }.should
        route_to :controller => 'profile', :action => 'show'
    end

    it 'recognizes and generates #edit' do
      { :get => '/profile/edit' }.should
        route_to :controller => 'profile', :action => 'edit'
    end
    
  end
  
end