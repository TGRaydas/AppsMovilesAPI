class DesksController < ApplicationController
  def index
    @desks = Desk.all
    render :json => @desks
  end
end
