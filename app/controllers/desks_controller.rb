class DesksController < ApplicationController
  @desks = Desk.all
  render :json => @desks
end
