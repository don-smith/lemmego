class ProfileController < ApplicationController
  def show
    @events = current_user.events
  end

  def edit
  end

end
