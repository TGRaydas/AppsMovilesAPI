class DesksController < ApplicationController
  def index
    @desks = Desk.all
    return_desks = []
    @desks.each do |desk|
      add_desk = true
      desk.bills.each do |bill|
        if bill.payed == false
          add_desk = false
        end
      end
      if add_desk == true
        return_desks.push(desk)
      end
    end
    render :json => return_desks
  end
end
