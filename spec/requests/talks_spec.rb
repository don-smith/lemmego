require 'spec_helper'

describe "Talks" do

  describe "GET /events/1/talks" do
    it "shows all talks for an event" do
      get event_talks_path Factory(:event)
    end
  end

end
